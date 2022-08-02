FROM sanctflow/uvicorn-gunicorn:python3.10-alpine3.16

LABEL maintainer="Marc Fez <marc.fez@gmail.com>"

COPY requirements.txt /tmp/requirements.txt
RUN pip install --no-cache-dir -r /tmp/requirements.txt

COPY ./app /app
