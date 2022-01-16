## Table of Contents

- [![What is React.JS?](#What is React.JS)
- [![How to use this image]](#How to use this image)
  - [![run docker image]](#run docker image)
- ![How to use customize docker image](#How to use customize docker image)
  - ![you can also see in github](#you can also see in github)
  - ![You can then build and run the Docker image:](#You can then build and run the Docker image:)
  - ![run docker image](#run docker image)
- ![Find me on social media:](#Find me on social media:)
    - ![Checkout my Github:](#Checkout my Github:)
    - ![Connect with me on LinkedIn:](#Connect with me on LinkedIn:)
    - ![Follow me on Instagram:](#Follow me on Instagram:)

# What is React.JS?

React (also known as React.js or ReactJS) is a free and open-source front-end JavaScript library[3] for building user interfaces based on UI components. It is maintained by Meta (formerly Facebook) and a community of individual developers and companies. React can be used as a base in the development of single-page or mobile applications. However, React is only concerned with state management and rendering that state to the DOM, so creating React applications usually requires the use of additional libraries for routing, as well as certain client-side functionality.

https://en.wikipedia.org/wiki/React_(JavaScript_library)
<br>
<img src="https://upload.wikimedia.org/wikipedia/commons/thumb/a/a7/React-icon.svg/330px-React-icon.svg.png">

<br/>

# How to use this image
```
docker pull sanjaysheel/reactjs-docker:latest
```

run docker image

```
docker run sanjaysheel/reactjs-docker:v1
```

as per your need you can use reactjs 
or you can also install using this command

```
sudo npm -g install create-react-app
```


# How to use customize docker image
#### you can also see in github
``` https://github.com/sanjaysheel/docker-reactjs-image ```

Dockerfile
``` 
FROM ubuntu:20.04
RUN apt-get update
RUN apt-get upgrade
RUN docker pull node
RUN npm install create-react-app
RUN apt-get install --no-install-recommends -y code
RUN apt-get install --no-install-recommends -y libx11-xcb1
RUN apt-get install --no-install-recommends -y libxtst6
RUN apt-get install --no-install-recommends -y libasound2
WORKDIR /app
ENV PATH /app/node_modules/.bin:$PATH
COPY package.json ./
RUN npm install --silent
COPY . .
CMD ["npm", "start"]
```


You can then build and run the Docker image:

```
docker image build -t sanjaysheel/reactjs-docker:v1 .
docker image tag <image> sanjaysheel/reactjs-docker:v1
docker image push sanjaysheel/reactjs-docker:v1
```

run docker image

```
docker run sanjaysheel/reactjs-docker:v1
```

# Find me on social media:

## Checkout my Github:
https://github.com/sanjaysheel
## Connect with me on LinkedIn:
https://www.linkedin.com/in/sanjaysheel8/
## Follow me on Instagram:
https://www.instagram.com/sheelsanjay/




=============================================================================================================

# docker-reactjs-image
I am contributing to the open source.

docker image build -t sanjaysheel/reactjs-docker:v1 .

docker image tag 1fe0898f8822 sanjaysheel/reactjs-docker:v1

docker image push sanjaysheel/reactjs-docker:v1
