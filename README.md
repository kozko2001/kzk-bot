

## RUN

``` sh
rasa run --port 5002 \
         --connector slack \
         --credentials credentials.yml \
         --endpoints endpoints.yml \
         --log-file out.log \
         --cors * \
         --enable-api \
         --debug
```

## interesting links:

- https://xlog.x-hub.io/build-your-chatbot-with-rasa-and-slack-from-training-to-deploying/
