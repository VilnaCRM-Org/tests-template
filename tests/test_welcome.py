import requests

def test_example_dot_com_is_up():
    url = "http://www.example.com"
    response = requests.get(url)

    # Check if the response status code is 200 (OK)
    assert response.status_code == 200

    # You can add more specific checks, for example, checking for specific content
    # on the page. For example, checking if the word "Example" is present in the response text.
    assert "Example" in response.text
