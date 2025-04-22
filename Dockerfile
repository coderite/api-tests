# Use the official Postman Newman Docker image as the base image
FROM postman/newman:latest

# Set the working directory inside the container
WORKDIR /etc/newman

# Copy the Postman API test collection file into the working directory
COPY tests/postman_api_tests.json .

# Define the default command to execute when the container starts
# `newman run` is the entry point for running the Postman collection
ENTRYPOINT ["newman", "run"]

# Specify the default arguments for the `newman run` command
# This runs the `postman_api_tests.json` collection and generates CLI and JUnit reports
CMD ["postman_api_tests.json", "--reporters", "cli,junit"]