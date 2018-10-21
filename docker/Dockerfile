FROM ghost:2.2.4-alpine

ADD custom-entrypoint.sh /custom-entrypoint.sh
ADD config.development.json /var/lib/ghost/

ENV NODE_ENV development

ENTRYPOINT ["/custom-entrypoint.sh"]
