<<<<<<< HEAD
from django.contrib import admin
from .models import *
# Register your models here.

class CategoryAdmin(admin.ModelAdmin):
    list_display=("name","image")
admin.site.register(Category,CategoryAdmin)
admin.site.register(Product)
admin.site.register(Cart)
=======
from django.contrib import admin
from .models import *
# Register your models here.

class CategoryAdmin(admin.ModelAdmin):
    list_display=("name","image")
admin.site.register(Category,CategoryAdmin)
admin.site.register(Product)
admin.site.register(Cart)
>>>>>>> 7c21ed5aeb93418d1ab75479e42e840677e8decc
