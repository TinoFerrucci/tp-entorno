FROM ubuntu:latest

WORKDIR /home/repositorio/tp-entorno
COPY . .
RUN apt-get update
RUN apt-get install bc -y

CMD [ "./menu.sh" ]
