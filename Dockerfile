FROM spikhalskiy/zerotier-containerized:1.6.2

COPY main.sh /main.sh
RUN chmod +x main.sh
