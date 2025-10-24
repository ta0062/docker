# Use official Python image as base
FROM python:3.10-slim

# Set working directory in container
WORKDIR /app

# Copy project files into the container
COPY . /app

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose the port your Flask app runs on
EXPOSE 4000

# Run the Flask app
CMD ["python", "app.py"]