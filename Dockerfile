FROM spikhalskiy/zerotier-containerized:1.6.6

COPY main.sh /main.sh
RUN chmod +x main.sh
