FROM linuxserver/libreoffice:amd64-7.5.3
RUN cat /etc/os-release


# FROM node:18.12.1-buster

# RUN apt-get update

# RUN apt-get install -y \
#     imagemagick

# # COPY package.json /
# # RUN npm install

# CMD ["bash"]