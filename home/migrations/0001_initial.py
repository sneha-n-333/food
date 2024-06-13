# Generated by Django 5.0.4 on 2024-04-24 04:40

import django.db.models.deletion
import home.models
from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Category',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=150)),
                ('image', models.ImageField(blank=True, null=True, upload_to=home.models.getFilename)),
                ('description', models.TextField(max_length=500)),
                ('created_at', models.DateField(auto_now_add=True)),
            ],
        ),
        migrations.CreateModel(
            name='Product',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=150)),
                ('product_image', models.ImageField(blank=True, null=True, upload_to=home.models.getFilename)),
                ('description', models.TextField(max_length=500)),
                ('price', models.IntegerField()),
                ('created_at', models.DateField(auto_now_add=True)),
                ('Category', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='home.category')),
            ],
        ),
    ]
