from django.utils import timezone

def get_timestamp(requst):
    return {'timestamp': timezone.now(),}
