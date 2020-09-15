FROM ubuntu:latest

#updating the system
RUN apt-get update && apt-get install wget -y ; \
apt-get install sudo -y; \
apt-get install curl -y; \
curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -; \
sudo apt install nodejs;

#creating a user with sudo privileges and a user for nginx
RUN groupadd --gid 2000 admin && useradd --uid 2000 --gid admin \
--shell /bin/bash --create-home admin && passwd -d admin && \
usermod -aG sudo admin; \

COPY 

RUN npm install

ENTRYPOINT ["npm", "start"]
