# Base image
FROM python:3.7

# Environment
ENV HOME /home
WORKDIR $HOME
COPY .bashrc requirements.txt $HOME/

# Install Commands
RUN apt-get update && apt-get upgrade -y \
  && apt-get install -y \
    git \
    vim

# Install Python libraries
RUN pip install --upgrade pip \
  && pip install -r $HOME/requirements.txt
