FROM arm32v7/ubuntu
RUN apt update
RUN apt install -y usbutils nodejs npm vim
ENV TZ=Europe/Warsaw
RUN DEBIAN_FRONTEND=noninteractive apt install -y mkcert rtl-sdr soapysdr-tools gnuradio
RUN npm install -g express cors ejs onoff xmlrpc socket.io
# add contents to folder
ADD remsdr /remsdr
ENTRYPOINT ["/remsdr/start.sh"]
