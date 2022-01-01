FROM python:3.8-alpine
WORKDIR /app
COPY . .
RUN python3 -m pip install --upgrade pip
RUN python3 -m pip install --no-cache-dir -r requirements.txt
ENV FLASK_APP=hello.py
ENV FLASK_RUN_HOST=0.0.0.0
EXPOSE 5000
ENTRYPOINT ["python"]
CMD ["hello.py"]