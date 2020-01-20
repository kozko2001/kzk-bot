# This files contains your custom actions which can be used to run
# custom Python code.
#
# See this guide on how to implement these action:
# https://rasa.com/docs/rasa/core/actions/#custom-actions/


# This is a simple example for a custom action which utters "Hello World!"

from typing import Any, Text, Dict, List

from rasa_sdk import Action, Tracker
from rasa_sdk.executor import CollectingDispatcher
from glob import glob
from orgparse import load  # https://orgparse.readthedocs.io/en/latest/

ORG_FOLDER = "org/"

class TodoListAction(Action):

    def name(self) -> Text:
        return "action_todo_list"

    def run(self, dispatcher: CollectingDispatcher,
            tracker: Tracker,
            domain: Dict[Text, Any]) -> List[Dict[Text, Any]]:

        files = glob(ORG_FOLDER + "**.org")
        todos = map(lambda f: list_todos(f), files)
        todos = [y for x in todos for y in x]  ## flatten

        message = "\n".join(todos)
        dispatcher.utter_message(text="here are your todo list!\n\n" + message)

        return []


def list_todos(file) -> List[Text]:
    org = load(file)
    todos = filter(lambda node: node.todo == "TODO", org[1:])
    headlines = map(lambda node: node.heading, todos)
    return list(headlines)
