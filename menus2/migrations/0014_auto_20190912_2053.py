# Generated by Django 2.2.4 on 2019-09-12 20:53

import datetime
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('menus2', '0013_auto_20190912_2053'),
    ]

    operations = [
        migrations.AlterField(
            model_name='menu',
            name='fecha_modificacion',
            field=models.DateTimeField(default=datetime.datetime(2019, 9, 12, 20, 53, 55, 4212)),
        ),
        migrations.AlterField(
            model_name='usuario',
            name='fecha_modificacion',
            field=models.DateTimeField(default=datetime.datetime(2019, 9, 12, 20, 53, 55, 5139)),
        ),
        migrations.AlterField(
            model_name='usuariopermisos',
            name='usuperFechaCreacion',
            field=models.DateTimeField(default=datetime.datetime(2019, 9, 12, 20, 53, 55, 6745)),
        ),
    ]
