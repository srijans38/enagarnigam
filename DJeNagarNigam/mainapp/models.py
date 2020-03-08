# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models

from django.contrib.auth.models import User

# Create your models here.

class AData(models.Model):
    user = models.OneToOneField(User,
                                on_delete=models.CASCADE,
                                related_name='A')
    resign_date = models.DateTimeField(null=True, blank=True)

    region = models.CharField(max_length=200)

    def __str__(self):
        return str(self.user)
