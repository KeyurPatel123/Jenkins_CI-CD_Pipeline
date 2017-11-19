FROM keyurbitw/abiomed

COPY . /home 

WORKDIR /home/publish 

CMD redis-server --daemonize yes && dotnet Abiomed.RLR.dll 

EXPOSE 80 443 6379
