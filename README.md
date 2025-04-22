# api-tests
- This repository contains a simple Postman collection with an API test suite.
- Repo is dockerized and test suites are to be run by instantiating the Docker file
- Used for demonstrating advanced Jenkins multi-branch pipeline

# How to run locally
docker build -t my-runner .
docker run --rm -my-runner
