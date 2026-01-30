FROM python:3.10-slim
RUN useradd -m appuser
WORKDIR /app
COPY app/hello.py .
USER appuser
CMD ["python", "hello.py"]
