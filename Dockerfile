FROM olbat/libreoffice:i18n-2023-06-09
RUN apt-get update
RUN apt-get install -y nodejs
# RUN apk add --update npm


# FROM node:18.12.1-buster

# RUN apt-get update

# RUN apt-get install -y \
#     imagemagick

# # COPY package.json /
# # RUN npm install

# CMD ["bash"]