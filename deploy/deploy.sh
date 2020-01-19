#!/usr/bin/env sh

rasa run actions &

rasa run --port 5002 --connector slack --cors * --debug --enable-api
