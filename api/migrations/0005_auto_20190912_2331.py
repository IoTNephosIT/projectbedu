# Generated by Django 2.2.4 on 2019-09-12 23:31

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('api', '0004_auto_20190912_2055'),
    ]

    operations = [
        migrations.AddField(
            model_name='devicedata',
            name='sensor',
            field=models.CharField(default='', max_length=20),
        ),
        migrations.AddField(
            model_name='devicedata',
            name='time',
            field=models.CharField(blank=True, default='', max_length=50, null=True),
        ),
    ]
