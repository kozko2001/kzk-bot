FROM python:3.7
ARG SLACK_KEY

EXPOSE 5002

RUN pip install rasa
WORKDIR /app

COPY . .
RUN sed -i "s/SLACK_KEY/$SLACK_KEY/g" credentials.yml
RUN cat credentials.yml

RUN rasa train

CMD ["rasa", "run", "--port", "5002", "--connector", "slack", "--cors", "*", "--debug", "--enable-api"]
