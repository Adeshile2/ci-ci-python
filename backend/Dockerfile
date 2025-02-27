FROM python:3.9-slim

WORKDIR /app
# Copy the requirements.txt from the root (build context) into /app
COPY ../requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

# Optionally copy the rest of your application code if needed
COPY ../app/ .

CMD ["python3", "app.py"]

