# Dockerfile_python_flask

Python Flask Application Dockerized
This project demonstrates how to containerize a simple Python Flask web application using Docker.

Prerequisites
Before you begin, ensure you have Docker installed on your local machine:

Docker: Install Docker
Getting Started
Follow these steps to get the project up and running on your local machine.

Clone the repository-->>
git clone https://github.com/akshitaakku/Dockerfile_python_flask.git
cd Dockerfile_python_flask
Open your web browser and navigate to http://localhost:5000 to view the running Flask application.

Project Structure-->>
├── Dockerfile          # Docker configuration file
├── app.py              # Python Flask application
├── requirements.txt    # Python dependencies
└── README.md           # Project documentation
Dockerfile
The Dockerfile defines the steps to build a Docker image for this Python Flask application. It starts with the official Python Docker image, installs system dependencies, sets up a virtual environment, installs Python dependencies from requirements.txt, copies application code, exposes port 5000, and specifies the command to run the Flask application using Gunicorn.

app.py
The app.py file contains the Python Flask application code. It sets up a basic Flask server that responds with "Hello, World!" at the root URL /.

Usage
Building the Docker image: Use docker build command to build the Docker image based on the Dockerfile.
Running the Docker container: Use docker run command to start the Docker container and run the Flask application.
Accessing the application: Open your web browser and navigate to http://localhost:5000 to interact with the running Flask application.
