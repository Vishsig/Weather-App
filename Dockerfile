# base image on top of which my image is built
FROM nginx:1.27.0-alpine

# copy required files from my file system path to the container file system
COPY . /usr/share/nginx/html

# Exposes the port on which container will run
EXPOSE 80

# CMD specifies which command to run in the container: herer nginx will run in foreground
# RUN commands executes while container is being built
# while CMD runs when container starts
CMD ["nginx", "-g", "daemon off;"]