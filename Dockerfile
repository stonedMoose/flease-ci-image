FROM linuxbrew/brew

RUN apt-get -y update && apt-get -y upgrade 
RUN apt-get -y install gpg-agent
RUN brew tap aws/tap; \
    brew install awscli aws-sam-cli

RUN curl -sL https://deb.nodesource.com/setup_12.x  | bash - && \
    apt-get -y install nodejs && \
    rm -rf /var/lib/apt/lists/*
