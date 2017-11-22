FROM microsoft/dotnet

RUN mkdir /root/.ssh/

ADD id_rsa /root/.ssh/id_rsa

RUN chmod 700 /root/.ssh/id_rsa && chown -R root:root /root/.ssh && touch /root/.ssh/known_hosts && ssh-keyscan github.com >> /root/.ssh/known_hosts

WORKDIR /home

RUN git clone git@github.com:KeyurPatel123/Jenkins_CI-CD_Pipeline.git

WORKDIR /home/Jenkins_CI-CD_Pipeline/publish

CMD redis-server --daemonize yes && dotnet Abiomed.RLR.dll

EXPOSE 443
