# Siddharth GUMGUM Assignment

This is a take-home project assigned to Siddharth.

### Question: 1

- Dockerize the Caching service app

**Prerequisites:**

1) I prefer Ubuntu 16.04
2) Docker
3) Redis Cluster
4) PEM key for Ec2 instances


### Installation

1) Create a docker repository on Docker Hub. (You should already have an account)
2) Login into your docker account from the local machine ```docker login ```
3) Insert your credentials
4) Create a GitHub public repository and clone it on the local system.
4) Create a **DockerFile** (Please refer to the Dockerfile on this repository)
5) Add the python file
6) Build the docker image ``` docker build -t <username>/caching-service ```
7) Check the images by running ``` docker image ls ```
8) Run the docker container by running this command ``` docker run -p 3000:3000 -e PORT=3000 -e REDIS_URL=http://34.208.xxx.49 <username>/caching-service ```
9) ``` REDIS_URL ``` and ``` PORT ``` are declared as env variables.
10) Check the container name & status by running this command ``` docker ps ```
11) Tag the docker service by ``` docker latest caching-service:latest caching-service:latest ```
13) Finally, push your image to the docker hub repository by running this command ``` docker push <username>/caching-service ```

[Dockerfile](https://github.com/vellore007/sidgumgum/blob/master/Dockerfile)


### Question: 2

- Deploy your service to Heroku

### Installation

1) Install Heroku on the local machine using ``` snap install --classic heroku ```
2) ``` heroku login ``` not required as opposed using an API key
3) Store your API key in ``` ~/.netrc ``` file
4) Create a ``` heroku.yml ``` file with all required dependencies - [heroku.yml](https://github.com/vellore007/sidgumgum/blob/master/heroku.yml)
5) Install Heroku container registry plugin by using ``` heroku plugins:install @heroku-cli/plugin-container-registry ```
6) Change the login mode to Heroku container by typing ``` heroku container : login ```
7) Create a Heroku container app by using ``` heroku create -a <appname> ```
8) Push the container by hitting ``` heroku container:push web -a <imagename> ```
9) Release the container by using ``` heroku container:release web -a <imagename> ```
10) Open the created app by using ``` heroku open ```
11) All the above steps are automated on shell script- [gumgum.sh](https://github.com/vellore007/sidgumgum/blob/master/gumgum.sh)


### Question: 3

- Build a Drone deployment pipeline

1) Create a Drone CI account and authenticate with your GitHub account.
2) Create a Git Webhook and add the Drone CI authentication token and payload URL ``` https://cloud.drone.io ``` **(grab token from the user settings page on Drone CI)** and create the action triggers. The below image describes the process.
3) Create a [.drone.yml](https://github.com/vellore007/sidgumgum/blob/master/.drone.yml) file for all running dependencies to trigger a build step.

![alt text](https://sid-gumgum.s3-us-west-2.amazonaws.com/GitWebhooks.png)

### Question: 4

- Multi-key support
**Script was improved by closely matching the requirement** - [extended.py](https://github.com/vellore007/sidgumgum/blob/master/extended.py)

## Bonus

**Slack Channel Alert**

1) The [drone.yml](https://github.com/vellore007/sidgumgum/blob/master/.drone.yml) file has this code appended at the bottom
2) Grab the Slack webhook from the **Administration -> Applications -> Webhooks** page on your Slack Admin Workspace
3) Attach the **webhook** to a channel of your choice
4) Insert these details on the script above

#### Code
``` yml
steps:
- name: slack
  image: plugins/slack
  settings:
    webhook: <https://hooks.slack.com/services/...>
    channel: <your channel>
    link_names: true
    template: >
      {{#success build.status}}
        build {{build.number}} succeeded. Good job. <your email>
      {{else}}
        build {{build.number}} failed. Please fix this <@channelname> <@someone>
      {{/success}}
```

# Testing the Heroku app connection alongside with ``` set ``` and ``` get ```

**Please look for the images below**

![alt text](https://sid-gumgum.s3-us-west-2.amazonaws.com/RedisConnection.png)

![alt text](https://sid-gumgum.s3-us-west-2.amazonaws.com/PostKey.png)

![alt text](https://sid-gumgum.s3-us-west-2.amazonaws.com/GetKey.png)







## Contributing
Pull requests are welcome.
