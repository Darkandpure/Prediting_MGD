# Use an official lightweight Python image.
FROM python:3.9-slim

# Copy local code to the container image.
WORKDIR /app
COPY . /app

# Install production dependencies.
RUN pip install -r requirements.txt

# Run the web service on container startup.
CMD ["gunicorn", "-b", ":8080", "app:app"]

