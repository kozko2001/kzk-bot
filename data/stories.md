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
  
## interactive_story_1
* add_todo{"todo": "Talk with Denisse"}
    - slot{"todo": "Talk with Denisse"}
    - action_add_todo
* add_todo{"todo": "look at this awesome web page"}
    - slot{"todo": "look at this awesome web page"}
    - action_add_todo
