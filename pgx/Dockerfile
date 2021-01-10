FROM postgres:13.1

LABEL maintainer="HairyRabbit <yfhj1990@hotmail.com>"

RUN apt-get update && \
    apt-get install -y python3-pip && \
    apt-get clean && \
    apt-get autoremove -y && \
    rm -rf /var/lib/apt/lists/* && \
    pip3 install pgxnclient --verbose --no-cache-dir && \
    pgxnclient install pgtap --verbose
    
RUN localedef -i zh_CN -c -f UTF-8 -A /usr/share/locale/locale.alias zh_CN.UTF-8

ENV LANG zh_CN.utf8

EXPOSE 5432
VOLUME [ "/var/lib/postgresql/data", "/etc/postgresql/postgresql.conf" ]

CMD [ "postgres" ]