FROM zyclonite/zerotier:1.14.1

COPY main.sh /main.sh
RUN chmod +x main.sh

ENTRYPOINT ["/main.sh"]
