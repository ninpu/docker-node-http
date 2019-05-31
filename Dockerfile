FROM node:10.15.3

# set timezone
RUN ln -snf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && \
    echo Asia/Shanghai > /etc/timezone && \
    dpkg-reconfigure --frontend noninteractive tzdata

WORKDIR /usr/src/app
EXPOSE 7002

COPY scripts/start.sh /usr/start.sh

RUN chmod 777 /usr/start.sh

CMD sh /usr/start.sh
