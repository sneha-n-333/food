from django.urls import path
from . import views

urlpatterns = [
    path('',views.home,name="home"),
    path('menu',views.menu,name="menu"),
    path('register',views.register,name="register"),
    path('login',views.login_page,name="login"),
    path('logout',views.logout_page,name="logout"),
    path('menu/<str:name>',views.menuview,name="menu"),
    path('menu/<str:cname>/<str:pname>',views.product_details,name="product_details"),
    path('about',views.about,name="about"),
    path('order',views.order,name="order"),
    path('cart',views.cart_page,name="cart"),
    path('remove_cart/<str:cid>',views.remove_cart,name="remove_cart"),
    path('addtocart',views.add_to_cart,name="addtocart"),
]
