# Dockerfile
FROM python:3.11-slim

WORKDIR /app

# Installer dépendances
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copier le code
COPY app/ .

EXPOSE 7860

CMD ["python", "main.py"]
