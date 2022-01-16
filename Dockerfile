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