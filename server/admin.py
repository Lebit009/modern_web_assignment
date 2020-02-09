from django.contrib import admin

# Register your models here.
from server.models import Genre


class AnimeModel(admin.ModelAdmin):
    list_display = ("Anime_trending","Genre","Rating")

admin.site.register(Genre,AnimeModel)