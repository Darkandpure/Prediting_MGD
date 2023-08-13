#!/bin/bash

# Stop on error
set -e

# Variables
PROJECT_ID="resgaurd-535fb"
SERVICE_NAME="app_final"
REGION="us-central1"  # Change this if needed
IMAGE_NAME="gcr.io/$PROJECT_ID/$SERVICE_NAME"

# Authenticate with Google Cloud
echo "Authenticating with Google Cloud..."
gcloud auth login

# Set the active project
echo "Setting active project to $PROJECT_ID..."
gcloud config set project $PROJECT_ID

# Build the Docker image
echo "Building Docker image..."
docker build -t $IMAGE_NAME .

# Authenticate Docker to push to Google Container Registry
echo "Authenticating Docker with Google Cloud Container Registry..."
gcloud auth configure-docker

# Push the Docker image to Google Container Registry
echo "Pushing Docker image to Google Cloud Container Registry..."
docker push $IMAGE_NAME

# Deploy to Google Cloud Run
echo "Deploying to Google Cloud Run..."
gcloud run deploy $SERVICE_NAME --image $IMAGE_NAME --platform managed --region $REGION

echo "Deployment completed successfully!"
