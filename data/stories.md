## happy path
* greet
  - utter_greet
* mood_great
  - utter_happy

## sad path 1
* greet
  - utter_greet
* mood_unhappy
  - utter_cheer_up
  - utter_did_that_help
* affirm
  - utter_happy

## sad path 2
* greet
  - utter_greet
* mood_unhappy
  - utter_cheer_up
  - utter_did_that_help
* deny
  - utter_goodbye

## say goodbye
* goodbye
  - utter_goodbye

## bot challenge
* bot_challenge
  - utter_iamabot

## happy list todos
* list_todos
  - action_todo_list
  
## happy add todos
* request_add_task
  - utter_which_task
* inform_task{"todo": "send an e-mail"}
  - action_add_text_to_task
  
## happy add todos2
* request_add_task
  - utter_which_task
* inform_task{"todo": "Schedule a meeting"}
  - action_add_text_to_task
