from django.shortcuts import render
from django.urls import reverse_lazy
from accounts import forms
from django.views.generic import CreateView
# Create your views here.


class Signup(CreateView):
    form_class = forms.UserSignup
    success_url = reverse_lazy('login')
    template_name = 'accounts/signup.html'
