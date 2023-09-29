FROM ubuntu

# Création Répertoire de flutter
WORKDIR /dev

# Flutter installation
RUN apt-get update
RUN apt-get install curl tar -y
RUN curl https://storage.googleapis.com/flutter_infra_release/releases/stable/linux/flutter_linux_3.13.6-stable.tar.xz
RUN tar xf ~/Downloads/flutter_linux_3.13.6-stable.tar.xz

# Création Répertoire de l'application
RUN cd
RUN mkdir /app
COPY . /app 
WORKDIR /app

# Start application
RUN flutter run
