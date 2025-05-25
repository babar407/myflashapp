# Use official Python image
FROM python:3.10-slim

# Set working directory
WORKDIR /app

# Copy app files
COPY . .

# Install dependencies
RUN pip install -r requirements.txt

# Expose the port
EXPOSE 8000

# Run the app
CMD ["python", "app.py"]
