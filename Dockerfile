FROM python:3.7
ARG SLACK_KEY

EXPOSE 5002

RUN pip install -r requirements.txt
WORKDIR /app

COPY . .
RUN pytest .
RUN sed -i "s/SLACK_KEY/$SLACK_KEY/g" credentials.yml

RUN rasa train

CMD ['deploy/deploy.sh']
