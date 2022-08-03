FROM sanctflow/uvicorn-gunicorn:python3.10

LABEL maintainer="Marc Fesz <marc.fez@gmail.com>"

COPY requirements.txt /tmp/requirements.txt
RUN pip install --no-cache-dir -r /tmp/requirements.txt

COPY ./app /app
