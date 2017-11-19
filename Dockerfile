FROM microsoft/dotnet 

COPY . /home 

RUN apt-get update && apt-get -y install build-essential redis-server

WORKDIR /home/publish 

CMD redis-server --daemonize yes && dotnet Abiomed.RLR.dll 

EXPOSE 80 443 6379
