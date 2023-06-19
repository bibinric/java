# Use an official Python runtime as the base image
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Copy the requirements file
COPY requirements.txt .

# Install the Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the application files into the container
COPY app.py .

# Set the environment variables if needed
# ENV VARIABLE_NAME value

# Expose the desired port if necessary
# EXPOSE port_number

# Define the command to run your application
CMD ["python", "app.py"]
