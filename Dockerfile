FROM python:3.7
ARG SLACK_KEY

EXPOSE 5002

WORKDIR /app
COPY . .

RUN pip install -U pip  ## need pip 19.0.0
RUN pip install -r requirements.txt

RUN python -m pytest .

RUN sed -i "s/SLACK_KEY/$SLACK_KEY/g" credentials.yml

RUN rasa train

CMD ['deploy/deploy.sh']
