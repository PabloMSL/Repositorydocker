FROM python:3.11-slim
WORKDIR /home/myapp
RUN pip install --upgrade pip setuptools
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY . .
EXPOSE 5050
CMD ["python3", "sample_app.py"]
