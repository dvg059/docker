# Fetch ubuntu image
FROM ubuntu:22.04

#install python on image
RUN \
	apt-get update && \
	apt-get install -y python3 && \
	apt-get install -y build-essential


# Create directory for our tests
RUN mkdir /tests

#Copy in our Python Script
COPY test.py /tests/test.py

COPY main.c /tests/main.c

# Command that will be invoked when container starts, override default entry point bin/sh
ENTRYPOINT ["python3", "tests/test.py"]
#Note passing in prameters  python3 test/test.py somthing  else
# CMD["somehting", "else"] 
