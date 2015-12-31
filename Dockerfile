FROM mutterio/mini-base
ENV VERSION=0.4.0
RUN  wget https://releases.hashicorp.com/vault/${VERSION}/vault_${VERSION}_linux_amd64.zip \
  && unzip vault_${VERSION}_linux_amd64.zip \
  && mv vault /usr/local/bin/ \
  && rm -f vault_${VERSION}_linux_amd64.zip

EXPOSE 8200

ENTRYPOINT [ "vault" ]
CMD [ "server", "-config=/etc/vault/vault.json" ]
