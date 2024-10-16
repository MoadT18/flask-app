# Gebruik Python 3.9 als basis image
FROM python:3.9-slim

# Zet de werkdirectory in de container
WORKDIR /app

# Kopieer de requirements.txt en installeer dependencies
COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

# Kopieer de rest van de applicatie naar de container
COPY . .

# Stel de FLASK_APP environment variable in
ENV FLASK_APP=app.py

# Zorg dat de Flask app op poort 5000 draait
EXPOSE 5000

# Start de Flask app
CMD ["flask", "run", "-h", "0.0.0.0", "-p", "5000"]
