FROM python:3.10.12

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# 残りのファイルをコピー
COPY . .

VOLUME /app/db_data

EXPOSE 8000

CMD ["python3", "manage.py", "runserver", "0.0.0.0:8000"]
