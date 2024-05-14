#!/bin/bash
#if [[ $GIT_BRANCH == "dev" ]];then

docker login -u preethivinil -p dckr_pat_Eoo1sRzg6OWiGjxvnSm3qAABSVE
docker tag devops-build preethivinil/dev:project01
docker push preethivinil/dev:project01

#elif [[ $GIT_BRANCH == "dev" ]];then

docker login -u preethivinil -p dckr_pat_Eoo1sRzg6OWiGjxvnSm3qAABSVE
docker tag devops-build preethivinil/prod:project01
docker push preethivinil/prod:project01

#fi
