FROM ubuntu:latest

#updating the system
RUN apt-get update && apt-get install wget -y ; \
apt-get install sudo -y; \
apt-get install curl -y; \
curl -sL https://deb.nodesource.com/setup_14.x | sudo -E bash -; \
apt install nodejs -y;

#creating a user with sudo privileges and a user for nginx
#RUN groupadd --gid 2000 admin && useradd --uid 2000 --gid admin \
#--shell /bin/bash --create-home admin && passwd -d admin && \
#usermod -aG sudo admin; \

COPY $PWD ~/Downloads

WORKDIR ~/Downloads
RUN npm install

ENTRYPOINT ["npm", "start"]
