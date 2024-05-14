#!/bin/bash
# Check the Git branch
if [[ $GIT_BRANCH == "origin/dev" ]]; then
    # Build your project
    sh'chmod +x build.sh'
    sh'./build.sh'

    # Log in to Docker Hub (replace with your actual Docker Hub credentials)
    docker login -u preethivinil -p dckr_pat_Eoo1sRzg6OWiGjxvnSm3qAABSVE
   
  
    # Tag the image
    docker tag devops-build preethivinil/dev:project


    # Push the image to the Dev Docker Hub repository
    docker push preethivinil/dev:project

elif [[ $GIT_BRANCH == "origin/main" ]]; then
    # Build your project
    sh'chmod +x build.sh'
    sh'./build.sh'

    # Log in to Docker Hub (replace with your actual Docker Hub credentials)
    docker login -u preethivinil -p dckr_pat_Eoo1sRzg6OWiGjxvnSm3qAABSVE

   
    # Tag the image
    docker tag devops-build preethivinil/prod:project01

    # Push the image to the Prod Docker Hub repository
    docker push preethivinil/prod:project01
fi
