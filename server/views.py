from django.contrib import messages, auth
from django.contrib.auth.models import User
from django.db.models import Q
from django.http import HttpResponse
from django.shortcuts import render, redirect


# Create your views here.
from server.models import Genre, Requeste


def home(request):
    Animation=Genre.objects.all()
    if request.method == 'POST':

        # return HttpResponse("<script> alert('Hello')</script> ")
        key = request.POST['key']
        obj=Genre.objects.filter(Q(Anime_trending__icontains=key) | Q(Genre__icontains=key))

        return render(request,"index.html",{"Anime":obj})

    return render(request,"index.html",{"Anime":Animation})


def signin(request):
    if request.method == 'POST':
        email = request.POST['email']
        first_name = request.POST['first_name']
        last_name = request.POST['last_name']
        username = request.POST['username']
        password1 = request.POST['password']
        password2 = request.POST['repeat']
        if password1 == password2:
            user = User.objects.create_user(email=email, first_name=first_name, last_name=last_name,
                                            username=username, password=password1)
            user.save()
            messages.info(request, 'user created')
            return redirect('/login')



        else:
            # print("password invalid")
            messages.info(request, 'Password wrong / email invalid')
            return redirect('/')
    else:
        return render(request, 'signin.html')


def login(request):
    if request.method=="POST":
        un=request.POST['un']
        pw=request.POST['psw']
        user=auth.authenticate(username=un,password=pw)
        if user is not None:
            auth.login(request,user)
            return redirect('/')
        else:
            return HttpResponse("<script> alert('Invalid password or username') </script>")
        
    else:
        return render(request, 'login.html')

def logout(request):
    auth.logout(request)
    return render(request,"logout.html")

def Request(request):
    if request.method=="POST":
        anime=request.POST['animename']
        username=request.POST['us']
        user=Requeste(anime_name=anime,username=username)
        user.save()
    return render(request, 'Request.html')


