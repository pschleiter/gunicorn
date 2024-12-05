FROM python:3.12

RUN pip install --no-cache-dir gunicorn==23.0.0

WORKDIR /app/

COPY ./gunicorn_conf.py gunicorn_conf.py

ENV PYTHONPATH=/app

EXPOSE 80

ENTRYPOINT ["gunicorn", "-c", "gunicorn_conf.py"]
