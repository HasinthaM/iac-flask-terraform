FROM python:3.10-slim

WORKDIR /app

# Use netcat-openbsd (more consistently available) and avoid extra recommends
RUN apt-get update && \
    apt-get install -y --no-install-recommends netcat-openbsd && \
    rm -rf /var/lib/apt/lists/*

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY . /app

COPY start.sh /start.sh
RUN chmod +x /start.sh

EXPOSE 5000
CMD ["/start.sh"]
