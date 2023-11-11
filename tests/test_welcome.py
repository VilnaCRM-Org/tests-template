"""Module to test the accessibility of example.com."""

import requests

def test_example_dot_com_is_up():
    """Test that example.com is up and responding to HTTP requests.

    This test checks that a GET request to example.com returns a status
    code of 200 (OK) and that the response contains the word "Example".
    """
    url = "http://www.example.com"
    # Define a timeout duration in seconds
    timeout_duration = 5
    response = requests.get(url, timeout=timeout_duration)

    # Check if the response status code is 200 (OK)
    assert response.status_code == 200, "The response status code is not 200."

    # Check if the word "Example" is present in the response text
    assert "Example" in response.text, "The word 'Example' is not in the response text."

# You can further add more specific tests or checks as needed.
