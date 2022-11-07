FROM python:3.10.8

RUN pip install --no-cache-dir gunicorn==20.1.0

WORKDIR /app/

COPY ./gunicorn_conf.py gunicorn_conf.py

ENV PYTHONPATH=/app

EXPOSE 80

ENTRYPOINT ["gunicorn", "-c", "gunicorn_conf.py"]