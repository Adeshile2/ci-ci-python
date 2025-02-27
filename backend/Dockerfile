# Use the official Python image
FROM python:3.9-slim

# Set the working directory
WORKDIR /app

# Copy the requirements file from the build context
COPY requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application code from the build context
COPY app/ ./app

# Set the working directory to /app (if needed)
WORKDIR /app

# Run the application
CMD ["python3", "app.py"]
