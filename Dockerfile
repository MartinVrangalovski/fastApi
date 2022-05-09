FROM python:3.7.13-slim-buster
# Create a working directory.
WORKDIR /app
# Install requirements
COPY requirements.txt .
RUN pip install -r requirements.txt
# Copy code
COPY main.py .
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8080"]