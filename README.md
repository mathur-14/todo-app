# To-Do Web Application with Docker and Kubernetes

This project demonstrates the deployment of a simple To-Do web application using Docker containers and Kubernetes orchestration. The application is built with Flask and MongoDB, showcasing how to reliably auto-scale and manage a web app in an industry-like environment.

## Project Overview

I created this project to test the practical implementation of Docker containerization and Kubernetes orchestration. The main objectives were to:

1. Containerize a Flask and MongoDB application
2. Deploy the application locally using Minikube
3. Deploy the application on AWS EKS
4. Implement Kubernetes features like replication, health monitoring, and rolling updates

## Prerequisites

To run this project, I ensured I had the following tools installed:

- Docker
- Minikube
- Kubectl
- AWS CLI
- A DockerHub account

## Application Architecture

The application consists of two main components:

1. A Flask web application for the frontend and API
2. A MongoDB database for data persistence

## Deployment Steps

### 1. Containerization

I created a Dockerfile for the Flask application and used the official MongoDB image. The `docker-compose.yml` file defines both services and their configurations.

### 2. Local Deployment with Minikube

To deploy the application locally:

1. I started Minikube
2. Created Kubernetes deployments for both Flask and MongoDB
3. Exposed the Flask deployment using a Kubernetes service

### 3. AWS EKS Deployment

For cloud deployment:

1. I created an AWS EKS cluster
2. Configured kubectl to connect to the EKS cluster
3. Applied the same Kubernetes configurations used in Minikube

## Kubernetes Features Implemented

### Replication Controller

I implemented a replication controller to maintain a specified number of application replicas, ensuring high availability.

### Rolling Update Strategy

I configured the deployment to use a rolling update strategy, allowing for zero-downtime updates of the application.

### Health Monitoring

I set up liveness and readiness probes to monitor the health of the application pods and ensure they're functioning correctly.

## Running the Application

To run the application:

1. Clone this repository
2. Build the Docker image: `docker build -t todo-app .`
3. Push the image to DockerHub: `docker push <your-dockerhub-username>/todo-app`
4. Apply the Kubernetes configurations: `kubectl apply -f k8s/`

## Conclusion

This project demonstrates how to deploy and manage a scalable web application using modern containerization and orchestration technologies. It provides a solid foundation for understanding how to reliably auto-scale applications in an industry setting.
