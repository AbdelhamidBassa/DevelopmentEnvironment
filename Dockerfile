#FROM python:3-alpine
#WORKDIR /usr/src/app
#EXPOSE 3000
#COPY requirements.txt .
#RUN pip install -qr requirements.txt
#COPY server.py .
#CMD ["python3", "./server.py"]

#FROM openjdk
#COPY JavaHTTPServer.java .
#COPY index.html .
#COPY 404.html .
#RUN javac JavaHTTPServer.java
#CMD ["java", "JavaHTTPServer"]

FROM node:alpine
LABEL maintainer "eric.muellenbach@yncrea.fr"
ADD app.js .
ENTRYPOINT [ "node", "app.js" ]
