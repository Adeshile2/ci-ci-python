FROM python:3.9-slim

# Copy the requirements.txt from the root (build context) into /app
COPY ../requirements.txt .

RUN pip install -r requirements.txt

# Optionally copy the rest of your application code if needed
COPY app/ ./app

WORKDIR /app

CMD ["python3", "app.py"]

