FROM ubuntu
RUN apt-get update && apt-get install -y git python python3-pip
RUN pip install jupyter
WORKDIR /home
ENTRYPOINT ["jupyter","notebook","--allow-root","--ip","0.0.0.0"]