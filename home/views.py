from django.http import  JsonResponse
from django.shortcuts import redirect, render 
from home.form import CustomUserForm
from .models import *
from django.contrib import messages
from django.contrib.auth import authenticate,login,logout
import json

# Create your views here.
def index(request):
   return render(request,"index.html")
def home(request):
    category=Category.objects.filter(status=0)
    return render(request,"index.html",{"category":category})
    
    
def menu(request):
    category=Category.objects.filter(status=0)
    return render(request,"menu.html",{"category":category})
def about(request):
    return render(request,"about.html")
def order(request):
    return render(request,"order.html")

def login_page(request):
  if request.user.is_authenticated:
    return redirect("/")
  else:
    if request.method=='POST':
      name=request.POST.get('username')
      pwd=request.POST.get('password')
      user=authenticate(request,username=name,password=pwd)
      if user is not None:
        login(request,user)
        messages.success(request,"Logged in Successfully")
        return redirect("/")
      else:
        messages.error(request,"Invalid User Name or Password")
        return redirect("/login")
    return render(request,"login.html")
  
def logout_page(request):
    if request.user.is_authenticated:
       logout(request)
       messages.success(request,"Logged out Successfully")
    return redirect("/")


def register(request):
    form=CustomUserForm()
    if request.method=='POST':
        form=CustomUserForm(request.POST)
        if form.is_valid():
            form.save()
            messages.success(request,"Registration Success You can Login Now..!")
            return redirect('/login')
    return render(request,"register.html",{'form':form})

def menuview(request,name):
    if(Category.objects.filter(name=name,status=0)):
        products=Product.objects.filter(category__name=name)
        return render(request,"indian.html",{"products":products,"category_name":name})
    else:
        messages.warning(request,"No such category found")
        return redirect('menu')
    
def product_details(request,cname,pname):
    if(Category.objects.filter(name=cname,status=0)):
        if(Product.objects.filter(name=pname,status=0)):
            products=Product.objects.filter(name=pname,status=0).first()
            return render(request,"products_details.html",{"products":products})
        else:
            messages.error(request,"no such produtcs found")
            return redirect('menu')
    else:
        messages.error(request,"No such category found")
        return redirect('menu')
    

def cart_page(request):
  if request.user.is_authenticated:
    cart=Cart.objects.filter(user=request.user)
    return render(request,"cart.html",{"cart":cart})
  else:
    return redirect("/")
 
def remove_cart(request,cid):
  cartitem=Cart.objects.get(id=cid)
  cartitem.delete()
  return redirect("/cart")

def add_to_cart(request):
   if request.headers.get('x-requested-with')=='XMLHttpRequest':
    if request.user.is_authenticated:
      data=json.load(request)
      product_qty=data['product_qty']
      product_id=data['pid']
      #print(request.user.id)
      product_status=Product.objects.get(id=product_id)
      if product_status:
        if Cart.objects.filter(user=request.user.id,product_id=product_id):
          return JsonResponse({'status':'Product Already in Cart'}, status=200)
        else:
          if product_status.quantity>=product_qty:
            Cart.objects.create(user=request.user,product_id=product_id,product_qty=product_qty)
            return JsonResponse({'status':'Product Added to Cart'}, status=200)
          else:
            return JsonResponse({'status':'Product Stock Not Available'}, status=200)
    else:
      return JsonResponse({'status':'Login to Add Cart'}, status=200)
   else:
    return JsonResponse({'status':'Invalid Access'}, status=200)
 

    
    

