# Use a base image with Python and your desired version
FROM python:3.9

# Set the working directory inside the container
WORKDIR /app

# Copy the test code to the container
COPY ./tests /app

# Install any test runner-specific dependencies, e.g., pytest
RUN pip install --no-cache-dir pytest

RUN pip install requests behave allure-pytest graphene

# Command to run the tests (modify as needed)
CMD ["pytest", "-v"]
