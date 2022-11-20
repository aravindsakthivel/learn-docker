# every image is based on another image
# FROM "image" - what ever the image you build base it on a image for nodejs app use `node:14`
FROM image:version
ENV SOME_ENV_NAME=admin SOME_ENV_PWD=pass
# RUN : to run any linux command inside the container `RUN mkdir -p /home/app` will create a folder inside the container
RUN mkdir -p /home/app
# COPY : the command runs on the host `COPY . /home/app` copy the current folder to the /home/app inside the contianer
COPY . /home/app
# ENTRYPOINT - to execute a whole shell script instead of separate command
ENTRYPOINT [ "executable.sh" ]
# EXPOSE - port no where the running process is exposed use to connect to host
EXPOSE 3000
# CMD - specifies the instruction that is to be executed when a Docker container starts an entry point command
CMD ["node", "server.js"]
