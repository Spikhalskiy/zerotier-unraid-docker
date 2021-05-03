FROM spikhalskiy/zerotier-containerized:1.6.5

COPY main.sh /main.sh
RUN chmod +x main.sh
