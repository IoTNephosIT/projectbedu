# Generated by Django 2.2.4 on 2019-09-12 20:22

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('loginapp', '0002_profile_menusparausuario'),
    ]

    operations = [
        migrations.AlterModelOptions(
            name='profile',
            options={'permissions': (('pueden_ver_administracion', 'administracion'), ('pueden_ver_dispositivos', 'dispositivos'), ('pueden_ver_reportes', 'reportes'))},
        ),
    ]
