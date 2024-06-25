FROM python:3.9-slim

RUN apt-get update && apt-get install -y \
    build-essential \
    swig \
    git \
    && rm -rf /var/lib/apt/lists/*

COPY requirements.txt .

RUN pip install --upgrade pip \
    && pip install -r requirements.txt

COPY . .

CMD ["python", "app.py"]
