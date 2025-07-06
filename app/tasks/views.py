from django.http import JsonResponse
from .models import Task

def task_list(request):
    tasks = list(Task.objects.values())
    return JsonResponse(tasks, safe=False)
