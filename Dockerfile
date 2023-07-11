FROM pudding/docker-app:node-18-20230518
RUN apt-get update
RUN apt-get install -y \
     libreoffice-core
RUN apt-get install libreoffice-java-common -y
RUN rm ~/.config/libreoffice/4/user/config/javasettings_Linux_*.xml


# FROM node:18.12.1-buster

# RUN apt-get update

# RUN apt-get install -y \
#     imagemagick

# # COPY package.json /
# # RUN npm install

# CMD ["bash"]