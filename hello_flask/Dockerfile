# FROM python:3.8

# WORKDIR /app

# COPY . .

# Install system dependencies required by mysqlclient
# RUN apt-get update && apt-get install -y \
    # gcc \
    # libmariadb-dev \
    # && pip install --upgrade pip \
    # && pip install flask mysqlclient \
    # && apt-get clean \
    # && rm -rf /var/lib/apt/lists/*

# EXPOSE 5002

# CMD ["python3", "app.py"]

#Multistage builds
#Stage 1: Build stage
FROM python:3.8-slim AS build

WORKDIR /app

RUN apt-get update && apt-get install -y \
    gcc \
    python3-dev \
    libmariadb-dev \
    pkg-config 

COPY . .    

RUN pip install flask mysqlclient
#Production stage
FROM python:3.8-slim

WORKDIR /app

COPY --from=build /app /app

# RUN pip install --upgrade pip && pip install flask mysqlclient

# Install Flak in the final image too

EXPOSE 5002

CMD ["python", "app.py"]