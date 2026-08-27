FROM pi-agent-antsable:latest

ENV PATH=$PATH:/root/.local/bin

RUN curl -fsSL https://herdr.dev/install.sh | sh

COPY entrypoint.sh /herdr.sh
RUN chmod +x /herdr.sh

COPY SKILL.md /root/SKILL.md

WORKDIR /root/brain

ENTRYPOINT ["/herdr.sh"]
