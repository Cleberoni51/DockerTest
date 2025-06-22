

#Using the ros:humble pre built container we will begin to edit what is on it
FROM ros:humble


#Since these files are not on the container to start out lets install them
RUN apt-get update && apt-get install -y nano && rm -rf /var/lib/apt/lists/*

#We also wanna take everything in the config file and copy it to the site_config file
COPY config/ /site_config/
