FROM ubuntu:latest

RUN \
  apt-get update && \
  apt-get -y upgrade && \
  apt-get install -y curl git htop man unzip vim wget tcpdump 

RUN cd /

RUN curl -sL https://aka.ms/InstallAzureCLIDeb | bash
# RUN wget –quiet -c https://releases.hashicorp.com/vault/1.2.3/vault_1.2.3_linux_amd64.zip -O temp.zip; unzip temp.zip; rm temp.zip

ENV PATH="/root/:${PATH}"
# Set environment variables.
ENV HOME /root

# Define working directory.
WORKDIR /root

# Define default command.
# CMD ["bash"]
CMD ["tail", "-f", "/dev/null"]