FROM python:3.12.2 as poetry
RUN pip install poetry==1.7.1

FROM poetry
WORKDIR /app

COPY pyproject.toml poetry.lock ./
RUN poetry install --no-root --no-directory

COPY ./src/ ./src
COPY ./README.md ./
RUN poetry install --only=main

RUN mkdir -p /data/{m,member,v,video}
ENV SERVER_BASE_PATH="/data"

CMD ["uvicorn", "src.bss_web_file_server.main:app", "--host", "0.0.0.0", "--port", "80"]
