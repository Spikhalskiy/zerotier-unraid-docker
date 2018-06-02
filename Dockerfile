FROM zerotier/zerotier-containerized:latest
ENV NETWORK_ID NETWORK_IS_NOT_SPECIFIED
CMD ["sh", "-c", "/zerotier-cli join ${NETWORK_ID}"]
