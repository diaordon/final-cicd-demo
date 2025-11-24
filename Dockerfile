FROM python:3.11-slim

WORKDIR /app

# Install dependencies first for better layer caching
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy app source
COPY app.py .

ENV PORT=8080
EXPOSE 8080

# Production entrypoint (Gunicorn)
CMD ["gunicorn", "-b", "0.0.0.0:8080", "app:app"]
