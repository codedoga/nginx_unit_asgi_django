from django.http import HttpResponse


async def test_view(request):
    return HttpResponse("ok")
