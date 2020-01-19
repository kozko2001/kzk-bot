FROM python:3.7
ARG SLACK_KEY

RUN pip install rasa

WORKDIR /app

COPY . .
RUN sed -i 's/SLACK_KEY/${SLACK_KEY}/g' credentials.yml
RUN rasa train

CMD ["rasa", "run", "--port", "5002", "--connector", "slack", "--cors", "*", "--debug", "--enable-api"]
