FROM python:3.7
ARG SLACK_KEY

EXPOSE 5002

RUN pip install rasa
WORKDIR /app

COPY . .
RUN sed -i "s/SLACK_KEY/$SLACK_KEY/g" credentials.yml

RUN rasa train

CMD ['./deploy/deploy.sh']
