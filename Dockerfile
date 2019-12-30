FROM nginx:alpine

ARG CACHEBUST=1
RUN echo "CACHE $CACHEBUST"

ENV CONTAINER=microservice-resources-proxy-container
ENV SOURCE=microservice-resources-proxy

ENV CONFIG_ROOT=/env/${CONTAINER}/dist
ENV CONFIG_HOME=${CONFIG_ROOT}

RUN mkdir -p ${CONFIG_HOME}
COPY ./dist ${CONFIG_HOME}

CMD ["nginx", "-c", "/env/microservice-resources-proxy-container/dist/folder/nginx.conf"]
