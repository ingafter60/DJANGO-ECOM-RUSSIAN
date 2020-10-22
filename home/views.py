# home/views.py
from django.contrib import messages
from django.shortcuts import render
from django.http import HttpResponse, HttpResponseRedirect

from home.models import Setting, ContactForm, ContactMessage

from product.models import Category, Product

def index(request):
    setting = Setting.objects.get(pk=1)
    category = Category.objects.all()
    page = 'home'
    context = { 'setting':setting, 'page':page, 'category':category }
    return render(request, 'index.html', context)


def aboutus(request):
    setting = Setting.objects.get(pk=1)
    context = { 'setting':setting }
    return render(request, 'about.html', context)


def contactus(request):
	# If there were post request from the form, code line: 23-34 will work
    if request.method == 'POST': # check post
        form = ContactForm(request.POST)
        if form.is_valid():
            data = ContactMessage() #create relation with model
            data.name = form.cleaned_data['name'] # get form input data
            data.email = form.cleaned_data['email']
            data.subject = form.cleaned_data['subject']
            data.message = form.cleaned_data['message']
            data.ip = request.META.get('REMOTE_ADDR')
            data.save()  #save data to table
            messages.success(request,"Your message has ben sent. Thank you for your message.")
            return HttpResponseRedirect('/contact')

    # If there were no post request from the the form, code line: 37-40 will work
    setting = Setting.objects.get(pk=1)
    form = ContactForm
    context={'setting':setting,'form':form  }
    return render(request, 'contactus.html', context)


def category_products(request, id, slug):
    setting = Setting.objects.get(pk=1)
    products = Product.objects.filter(category_id=id)
    return HttpResponse(products)
