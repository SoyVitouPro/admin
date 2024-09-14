FROM python:3.12-slim

WORKDIR /app

COPY requirements.txt requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

COPY random_forest_model.pkl /app/
COPY app.py /app/
COPY flower/ /app/flower/
COPY templates/home.html /app/templates/


CMD ["python", "app.py"]
