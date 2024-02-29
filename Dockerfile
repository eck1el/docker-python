FROM python:3.12.1-slim
COPY . usr/src/app
WORKDIR /usr/src/app

RUN pip install -r requirements.txt
ENTRYPOINT uvicorn --host 0.0.0.0 main:app --reload