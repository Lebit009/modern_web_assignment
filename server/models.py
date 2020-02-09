from django.db import models

# Create your models here.

class Genre(models.Model):
    Anime_trending=models.CharField(max_length=100)
    Genre=models.CharField(max_length=100)
    Rating=models.IntegerField()


class Requeste(models.Model):
    anime_name=models.CharField(max_length=100)
    username=models.CharField(max_length=100)
