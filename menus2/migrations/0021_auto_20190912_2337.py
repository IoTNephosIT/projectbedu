# Generated by Django 2.2.4 on 2019-09-12 23:37

import datetime
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('menus2', '0020_auto_20190912_2332'),
    ]

    operations = [
        migrations.AlterField(
            model_name='menu',
            name='fecha_modificacion',
            field=models.DateTimeField(default=datetime.datetime(2019, 9, 12, 23, 37, 18, 141296)),
        ),
        migrations.AlterField(
            model_name='usuario',
            name='fecha_modificacion',
            field=models.DateTimeField(default=datetime.datetime(2019, 9, 12, 23, 37, 18, 142175)),
        ),
        migrations.AlterField(
            model_name='usuariopermisos',
            name='usuperFechaCreacion',
            field=models.DateTimeField(default=datetime.datetime(2019, 9, 12, 23, 37, 18, 144016)),
        ),
    ]
