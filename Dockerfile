FROM python:rc-slim

WORKDIR /app

COPY . /app

RUN pip install --trusted-host pypi.python.org -r requirements.txt

CMD ["gunicorn", "app:app"]