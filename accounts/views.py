from django.contrib.auth.decorators import login_required
from django.shortcuts import render, redirect, get_object_or_404
from cart.models import Cart
from .forms import *
from django.contrib.auth import authenticate, login


# Create your views here.


def sign_up(request):
    if request.method == 'POST' and 'sign_up' in request.POST:
        data = SignUpForm(request.POST)
        if data.is_valid():
            data.save()
            username = data.cleaned_data['username']
            password = data.cleaned_data['password2']
            user = authenticate(username=username, password=password)
            login(request, user)
            return redirect('accounts:profile')
    return render(request, 'registration/signup.html', {'signup_form': SignUpForm})


@login_required
def profile(request):
    items = Cart.objects.filter(owner=request.user)
    profile = get_object_or_404(Profile, user=request.user)
    return render(request, 'profile/profile.html', {'profile': profile, 'items': items})


@login_required
def edit_profile(request):
    items = Cart.objects.filter(owner=request.user)
    profile = get_object_or_404(Profile, user=request.user)
    if request.method == 'POST' and 'edit_profile' in request.POST:
        user_form = UserEditForm(request.POST, instance=request.user)
        profile_form = ProfileForm(request.POST, request.FILES, instance=profile)
        if user_form.is_valid() and profile_form.is_valid():
            user_form.save()
            profile_data = profile_form.save(commit=False)
            profile_data.user = request.user
            profile_data.save()
            return redirect('accounts:profile')
    else:
        user_form = UserEditForm(instance=request.user)
        profile_form = ProfileForm(instance=profile)

    context = {'user_form': user_form, 'profile_form': profile_form, 'items': items}
    return render(request, 'profile/edit_profile.html', context)
