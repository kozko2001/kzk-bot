from actions import list_todos


def test_list_todos():
    todos = list_todos("test/fixtures/file1.org")

    assert len(todos) == 9
    assert todos[8] == 'JURI maintenance baseline'
