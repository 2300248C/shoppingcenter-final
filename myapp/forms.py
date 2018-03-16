#coding:utf-8
from django import forms


class LoginForm(forms.Form):
    username = forms.CharField(widget=forms.TextInput(attrs={"placeholder":"User Name","required":"required",}),
                               max_length=50,error_messages={"required":"User Name Shouldn't be empty",})
    password = forms.CharField(widget=forms.PasswordInput(attrs={"placeholder":"Password","required":"required",}),
                               max_length=20,error_messages={"required":"Password Shouldn't be empty",})



class RegForm(forms.Form):
    username = forms.CharField(widget=forms.TextInput(attrs={"placeholder":"User Name","required":"required",}),
                               max_length=50,error_messages={"required":"User Name Shouldn't be empty",})
    email = forms.CharField(widget=forms.TextInput(attrs={"placeholder":"Email","required":"required",}),
                            max_length=50,error_messages={"required":"Email Shouldn't be empty",})
    password = forms.CharField(widget=forms.PasswordInput(attrs={"placeholder":"Password","required":"required",}),
                               max_length=20,error_messages={"required":"Password Shouldn't be empty",})
    confirm_password = forms.CharField(widget=forms.PasswordInput(attrs={"placeholder":"Confirmation Password","required":"required",}),
                                       max_length=20,error_messages={"required":"Password Shouldn't be empty",})
    address = forms.CharField(widget=forms.TextInput(attrs={"placeholder":"Address","required":"required",}),
                              max_length=200,error_messages={"required":"Address Shouldn't be empty",})
    phone = forms.CharField(widget=forms.TextInput(attrs={"placeholder":"Tel","required":"required",}),
                            max_length=50,error_messages={"required":"Tel Shouldn't be empty",})
    def clean(self):   
        if not self.is_valid():  
            raise forms.ValidationError('All data must be written')
        elif self.cleaned_data['confirm_password'] != self.cleaned_data['password']:
            raise forms.ValidationError('Error, two passwords are not same!')
        else:
            cleaned_data = super(RegForm,self).clean()
        return cleaned_data   


class ExpressForm(forms.Form):
    postid=forms.CharField(widget=forms.TextInput(attrs={"placeholder":"Express NO.","required":"required",}),
                           max_length=40,error_messages={"required":"Express NO. Shouldn't be empty",})


class CommentForm(forms.Form):
    comm = forms.CharField(widget=forms.Textarea(attrs={"placeholder":"Comment on Goods","required":"required",'style': 'height: 60px;width:550px'}),
                           max_length=100,error_messages={"required":"Comment Shouldn't be empty!",})