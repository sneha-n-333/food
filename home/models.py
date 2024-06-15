<<<<<<< HEAD
from django.db import models
from django.contrib.auth.models import User
import datetime
import os

def getFilename(request,filename):
    now_time=datetime.datetime.now().strftime("%Y%m%d%H:%M:%S")
    new_filename="%s%s"%(now_time,filename)
    return os.path.join('uploads/',new_filename)


# Create your models here.
class Category(models.Model):
    name=models.CharField(max_length=150,null=False,blank=False)
    image=models.ImageField(upload_to=getFilename,null=True,blank=True)
    description=models.TextField(max_length=500,null=False,blank=False)
    created_at=models.DateField(auto_now_add=True)
    status=models.BooleanField(default=False,help_text="0.show,1.Hidden")

class Product(models.Model):
    category=models.ForeignKey(Category,on_delete=models.CASCADE)
    name=models.CharField(max_length=150,null=False,blank=False)
    product_image=models.ImageField(upload_to=getFilename,null=True,blank=True)
    description=models.TextField(max_length=500,null=False,blank=False)
    price=models.IntegerField(null=False,blank=False)
    quantity=models.IntegerField(default=False,blank=False)
    created_at=models.DateField(auto_now_add=True)
    status=models.BooleanField(default=False,help_text="0.show,1.Hidden")
    
    

    

    def __str__(self):
        return self.name
    
class Cart(models.Model):
  user=models.ForeignKey(User,on_delete=models.CASCADE)
  product=models.ForeignKey(Product,on_delete=models.CASCADE)
  product_qty=models.IntegerField(null=False,blank=False)
  created_at=models.DateTimeField(auto_now_add=True)
 
  @property
  def total_cost(self):
    return self.product_qty*self.product.price

    
=======
from django.db import models
from django.contrib.auth.models import User
import datetime
import os

def getFilename(request,filename):
    now_time=datetime.datetime.now().strftime("%Y%m%d%H:%M:%S")
    new_filename="%s%s"%(now_time,filename)
    return os.path.join('uploads/',new_filename)


# Create your models here.
class Category(models.Model):
    name=models.CharField(max_length=150,null=False,blank=False)
    image=models.ImageField(upload_to=getFilename,null=True,blank=True)
    description=models.TextField(max_length=500,null=False,blank=False)
    created_at=models.DateField(auto_now_add=True)
    status=models.BooleanField(default=False,help_text="0.show,1.Hidden")

class Product(models.Model):
    category=models.ForeignKey(Category,on_delete=models.CASCADE)
    name=models.CharField(max_length=150,null=False,blank=False)
    product_image=models.ImageField(upload_to=getFilename,null=True,blank=True)
    description=models.TextField(max_length=500,null=False,blank=False)
    price=models.IntegerField(null=False,blank=False)
    quantity=models.IntegerField(default=False,blank=False)
    created_at=models.DateField(auto_now_add=True)
    status=models.BooleanField(default=False,help_text="0.show,1.Hidden")
    
    

    

    def __str__(self):
        return self.name
    
class Cart(models.Model):
  user=models.ForeignKey(User,on_delete=models.CASCADE)
  product=models.ForeignKey(Product,on_delete=models.CASCADE)
  product_qty=models.IntegerField(null=False,blank=False)
  created_at=models.DateTimeField(auto_now_add=True)
 
  @property
  def total_cost(self):
    return self.product_qty*self.product.price

    
>>>>>>> 7c21ed5aeb93418d1ab75479e42e840677e8decc
