# Generated by Django 2.2.4 on 2019-09-12 20:31

import datetime
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('menus2', '0011_auto_20190912_2027'),
    ]

    operations = [
        migrations.AlterField(
            model_name='menu',
            name='fecha_modificacion',
            field=models.DateTimeField(default=datetime.datetime(2019, 9, 12, 20, 31, 30, 371130)),
        ),
        migrations.AlterField(
            model_name='usuario',
            name='fecha_modificacion',
            field=models.DateTimeField(default=datetime.datetime(2019, 9, 12, 20, 31, 30, 371905)),
        ),
        migrations.AlterField(
            model_name='usuariopermisos',
            name='usuperFechaCreacion',
            field=models.DateTimeField(default=datetime.datetime(2019, 9, 12, 20, 31, 30, 373323)),
        ),
    ]
