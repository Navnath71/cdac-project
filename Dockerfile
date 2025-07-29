# Use official Python slim image
FROM python:3.10-slim

# Set the working directory inside the container
WORKDIR /app

# Copy and install Python dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application code
COPY . .

# Expose Flask port
EXPOSE 4000

# Start the Flask app
CMD ["python", "app.py"]
