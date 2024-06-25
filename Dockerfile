FROM python:3.9-slim

# Install necessary system packages
RUN apt-get update && apt-get install -y \
    build-essential \
    swig \
    git \
    && rm -rf /var/lib/apt/lists/*

# Copy and install Python dependencies
COPY requirements.txt .
RUN pip install --upgrade pip && pip install -r requirements.txt

# Copy the application code
COPY . .

# Set the command to run the application
CMD ["streamlit", "run", "app.py", "--server.port", "8501"]
