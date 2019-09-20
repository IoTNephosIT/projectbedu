from django.shortcuts import render, redirect
from django.contrib.auth import authenticate, login, logout
from django.contrib.auth.decorators import login_required
# Create your views here.
from django.contrib.auth.models import User
from loginapp.models import Profile
from django.db.utils import IntegrityError

def login_view(request):
	if request.method == 'POST':
		username = request.POST['username']
		password = request.POST['password']
		user = authenticate(request, username=username, password=password)
		print("user: ", user)
		if user is not None:
			login(request,user)
			return redirect('/')
		else:
			return render(request,'login.html', {'error':'invalid username or password'})
	return render(request, 'login.html')

@login_required
def logout_view(request):
	logout(request)
	return redirect('login')

@login_required
def feed_view(request):
	return render(request, 'feed.html')