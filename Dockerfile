FROM keyurbitw/abiomed

WORKDIR /home

RUN git pull origin master 

WORKDIR /home/Jenkins_CI-CD_Pipeline/publish 

CMD redis-server --daemonize yes && dotnet Abiomed.RLR.dll 

EXPOSE 80 443 6379
