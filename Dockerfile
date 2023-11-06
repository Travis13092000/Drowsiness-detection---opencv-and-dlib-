# Use a Python base image with the required dependencies
FROM python:3.8-slim-buster


# Set the working directory in the container
WORKDIR /app

# Copy your Python script into the container
COPY main.py /app/

# Install required packages
RUN pip install opencv-python-headless dlib pyttsx3 scipy


# Define the command to run your Python script
CMD ["python", "main.py"]
