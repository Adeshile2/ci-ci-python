FROM python:3.9-slim

WORKDIR /app
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY ../requirements.txt /app/requirements.txt

CMD ["python3", "app.py"]
