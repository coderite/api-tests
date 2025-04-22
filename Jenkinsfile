pipeline {
  agent any
  stages {
    stage('Checkout API') {
      steps {
        // grab the latest API code (or even a specific tag/branch)
        git url: 'git@github.com:your-org/api-repo.git'
      }
    }
    stage('Checkout Tests') {
      steps {
        // our Jenkinsfile lives here
        checkout scm
      }
    }
    stage('Build Newman Image') {
      steps {
        sh 'docker build -t newman-runner .'
      }
    }
    stage('Start API') {
      steps {
        // bring up your API in a container or service
        sh 'docker-compose up -d ../api-repo'
      }
    }
    stage('Execute Tests') {
      steps {
        sh 'docker run --rm newman-runner'
      }
    }
  }
}