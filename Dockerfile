FROM node:alpine
RUN mkdir /peer-server
WORKDIR /peer-server
COPY bin ./bin
COPY dist ./dist
COPY package.json .
RUN npm install --production
EXPOSE 9443
ENTRYPOINT ["node", "bin/peerjs"]
CMD [ "--port", "9443", "--sslkey", "/certs/live/peerjs-server.toteto.tech/privkey.pem", "--sslcert", "/certs/live/peer$
