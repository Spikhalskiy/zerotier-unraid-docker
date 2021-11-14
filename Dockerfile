FROM spikhalskiy/zerotier-containerized:1.8.2

COPY main.sh /main.sh
RUN chmod +x main.sh
