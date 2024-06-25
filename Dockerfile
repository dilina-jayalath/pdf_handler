FROM python:3.10-slim

# Install system dependencies
RUN apt-get update && apt-get install -y \
    build-essential \
    wget \
    curl \
    libblas-dev \
    liblapack-dev \
    gfortran \
    && rm -rf /var/lib/apt/lists/*

# Install pip and other Python dependencies
RUN pip install --upgrade pip

# Copy the requirements file into the container
COPY requirements.txt /app/requirements.txt

# Install Python dependencies
RUN pip install -r /app/requirements.txt

# Copy the application code into the container
COPY . /app

# Set the working directory
WORKDIR /app

# Command to run the application
CMD ["streamlit", "run", "app.py"]
