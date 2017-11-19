FROM microsoft/dotnet 

COPY . /home 

RUN apt-get update && apt-get -y install build-essential redis-server

WORKDIR /home/publish 

EXPOSE 80 443 6379
