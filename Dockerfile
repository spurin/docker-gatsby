FROM ubuntu:20.04

# Update and install wget
RUN apt-get update \
    && apt-get install -y wget \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# Create a /data mountpoint
RUN mkdir /data

# Download the Great Gatsby Text to /data and sync
CMD ["sh", "-c", "wget http://pauladaunt.com/books/F%20Scott%20Fitzgerald%20-%20The%20Great%20Gatsby.txt -O /data/gatsby.txt; sync; sleep infinity"]
