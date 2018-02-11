FROM mhart/alpine-node:9.4.0
RUN apk add --update curl && \
    rm -rf /var/cache/apk/*
RUN mkdir -p /user/src/app
ARG PORT=3000
ENV PORT $PORT
HEALTHCHECK CMD curl -fs http://localhost:$PORT/healthz || exit 1
WORKDIR  /user/src/app
COPY ["package.json", "npm-shrinkwrap.json*", "yarn.lock" , "./"]
RUN yarn install --production
COPY .  /user/src/app
EXPOSE $PORT
CMD ["node", "app.js"]
