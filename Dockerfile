FROM zyclonite/zerotier:1.12.0

COPY main.sh /main.sh
RUN chmod +x main.sh

ENTRYPOINT ["/main.sh"]
