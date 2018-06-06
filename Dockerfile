FROM zerotier/zerotier-containerized:latest

COPY main.sh /main.sh
RUN chmod +x main.sh
