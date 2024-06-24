# Use the official Python image from the Docker Hub
FROM python:3.8-slim

# Set environment variables
ENV 

# Set the working directory inside the container
WORKDIR /app

# Install system dependencies
RUN apt-get update && apt-get install -y \
    python3-dev \
    build-essential \
    libssl-dev \
    libffi-dev \
    python3-setuptools \
    python3-venv

# Install Python dependencies
COPY requirements.txt /app/
RUN python3 -m venv gatewayenv
RUN . gatewayenv/bin/activate
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

# Copy the application code into the container
COPY . /app/

# Expose the port that the app runs on
EXPOSE 5000

# Command to run the application
CMD ["gunicorn", "--bind", "0.0.0.0:5000", "app:app"]

