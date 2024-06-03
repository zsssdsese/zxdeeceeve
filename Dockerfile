FROM python:3
WORKDIR /chat

COPY main.py .

RUN python3 main.py cf init && chmod +x ./*

EXPOSE 8080

CMD ["python3", "main.py", "server"]

USER 10001
