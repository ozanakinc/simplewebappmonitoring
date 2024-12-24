# Use the official Python image from the Docker Hub
FROM python:3.9-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the application code to the container
COPY app.py /app/

# Expose the port the app will run on
EXPOSE 8000

# Install any required dependencies (if needed)
RUN pip install --no-cache-dir flask

# Define the command to run the app
CMD ["python3", "app.py"]
