# Use an official Python runtime as a parent image
FROM python:3.9-slim
ARG linux/amd64

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any needed packages specified in requirements.txt
RUN pip install --trusted-host pypi.python.org -r requirements.txt

# Make port 80 available to the world outside this container
# EXPOSE 8080

# Define environment variable
ENV NAME CC-2

# Run app.py when the container launches
CMD ["python", "app.py"]
