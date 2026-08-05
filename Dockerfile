FROM pi-agent:latest

ENV PATH=$PATH:/root/.local/bin

RUN curl -fsSL https://herdr.dev/install.sh | sh

COPY entrypoint.sh /herdr.sh
RUN chmod +x /herdr.sh

ENTRYPOINT ["/herdr.sh"]
