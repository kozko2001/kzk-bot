FROM python:3.7
RUN pip install rasa

WORKDIR /app

COPY . .

RUN rasa train

CMD ["rasa", "run", "--port", "5002", "--connector", "slack", "--cors", "*", "--debug", "--enable-api"]
