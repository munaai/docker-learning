FROM python:3.8-slim
WORKDIR /app
COPY . .
RUN pip install flask
EXPOSE 5002
CMD ["python", "app.py"]