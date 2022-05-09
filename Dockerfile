FROM python:3.7.7-slim-buster
# Create a working directory.
WORKDIR /app
# Install requirements
COPY requirements.txt .
RUN pip install -r requirements.txt
# Copy code
COPY app.py .
#CMD [ "gunicorn", "--workers=2", "--bind=0.0.0.0:5000", "--threads=1", "app:app"]
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]