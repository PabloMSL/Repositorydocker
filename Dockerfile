FROM python:3.11-slim

WORKDIR /app

RUN apt-get update && apt-get upgrade -y && rm -rf /lib/apt/lists/*

RUN pip uninstall -y msgpack setuptools && \
    pip install --no-cache-dir --upgrade "msgpack>=1.2.1" "setuptools>=78.1.1"

RUN pip install --no-cache-dir --upgrade pip "setuptools>=78.1.1"

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY . .

EXPOSE 5050

ENV PYTHONUNBUFFERED=1

CMD ["python", "sample_app.py"]