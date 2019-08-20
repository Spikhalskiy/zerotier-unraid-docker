FROM spikhalskiy/zerotier-containerized:1.2.12

COPY main.sh /main.sh
RUN chmod +x main.sh
