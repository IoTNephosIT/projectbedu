# Generated by Django 2.2.4 on 2019-09-12 18:04

import datetime
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('menus2', '0006_auto_20190912_1300'),
    ]

    operations = [
        migrations.AlterField(
            model_name='menu',
            name='fecha_modificacion',
            field=models.DateTimeField(default=datetime.datetime(2019, 9, 12, 13, 4, 27, 215974)),
        ),
        migrations.AlterField(
            model_name='usuario',
            name='fecha_modificacion',
            field=models.DateTimeField(default=datetime.datetime(2019, 9, 12, 13, 4, 27, 216973)),
        ),
        migrations.AlterField(
            model_name='usuariopermisos',
            name='usuperFechaCreacion',
            field=models.DateTimeField(default=datetime.datetime(2019, 9, 12, 13, 4, 27, 217968)),
        ),
    ]