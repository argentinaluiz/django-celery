## commandos para rodar celery

### tarefas agendadas

celery -A django_celery beat -l INFO --scheduler django_celery_beat.schedulers:DatabaseScheduler

### rodar o celery worker

celery -A django_celery worker -l INFO

## rodar o celery worker + beats

celery -A django_celery worker -B -l INFO --scheduler django_celery_beat.schedulers:DatabaseScheduler