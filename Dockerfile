FROM python:3.13-alpine

WORKDIR /app

COPY app.py .

RUN useradd -m appuser && chown -R appuser:appuser /app
USER appuser

CMD [ "python", "app.py" ]