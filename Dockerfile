FROM spikhalskiy/zerotier-containerized:1.4.2

COPY main.sh /main.sh
RUN chmod +x main.sh
