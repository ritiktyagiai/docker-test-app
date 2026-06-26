# Base image
FROM python:3.9

# Set the working directory
WORKDIR /app

# Copy the  file
COPY . /app

# Install the dependencies
RUN pip install -r requirements.txt

# Expose the port
EXPOSE 5000

# Run the application
CMD ["python", "app.py"]