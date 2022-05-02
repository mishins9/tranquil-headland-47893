from django.urls import path, include

from testapp import views

urlpatterns = [
    path('', views.test, name='test'),
    path('rubric/<int:pk>', views.get_rubric, name='rubric'),
]