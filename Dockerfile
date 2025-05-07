# Dockerfile para conversión de temperaturas
FROM python:3.9-slim

WORKDIR /app

# Instalar dependencias
COPY requirements.txt .
RUN pip install -r requirements.txt

# Copiar datos transformados
COPY temperaturas_transformadas.csv /data/temperaturas_transformadas.csv

# Comando para verificar los datos
CMD ["bash", "-c", "echo 'Datos de temperatura convertidos:' && python -c "import pandas as pd; df = pd.read_csv('/data/temperaturas_transformadas.csv'); print(df.head())""]
