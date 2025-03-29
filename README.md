Documentation of the base image : https://hub.docker.com/r/jenkins/inbound-agent

## How to run the project

1. Creer le container de l'agent :

   ```bash
   docker build -t jenkins-front-agent-image .
   ```

2. Lancer le container de l'agent:
   ```bash
   docker run --name jenkins-agent-container --init jenkins-agent-image -url http://<IPAdresse_of_jenkins_master>:8080 <password> <node_name>
   ex :
   docker run --name front-agent-container --init jenkins-front-agent-image  -url http://172.17.0.2:8080 -workDir=/home/jenkins/agent 7ee80c733bf45d7b1aa3b9e42217c0e4610391d7856e1c1328439ad6866df764 mybank-front-agent
   ```

To get the <IPAdresse_of_jenkins_master>, make this command :

```bash
docker inspect jenkins_master_container
```

<password> and <node_name> are given by the jenkins_master when you create a node
