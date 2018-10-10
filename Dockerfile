FROM screamingjoypad/jmeter-armada-base
# using screamingjoypad base image
MAINTAINER screamingjoypad

# expose the following ports on the contianer
EXPOSE 1099 50000

# set the application to run at start of container
ENTRYPOINT /jmeter/apache-jmeter-3.3/bin/jmeter-server \
                        -Dserver.rmi.localport=50000 \
                        -Dserver_port=1099