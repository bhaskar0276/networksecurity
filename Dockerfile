# Use official Python image
FROM python:3.8-slim-buster

# Set working directory
WORKDIR /app

# Copy application files
COPY . /app

# Install system dependencies
RUN apt update -y && apt install -y awscli && apt clean

# Install Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose Flask app port
EXPOSE 6031

# Set entrypoint for running Flask app
CMD ["python3", "application.py"]