FROM python:3.8

WORKDIR /app

COPY . .

# Install system dependencies required by mysqlclient
RUN apt-get update && apt-get install -y \
    gcc \
    libmariadb-dev \
    && pip install --upgrade pip \
    && pip install flask mysqlclient \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

EXPOSE 5002

CMD ["python3", "app.py"]
