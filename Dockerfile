FROM  public.ecr.aws/docker/library/node:18
WORKDIR /app
COPY . .
RUN npm install n8n@0.220.0
RUN npm install multiaddr
ENV NODE_FUNCTION_ALLOW_EXTERNAL=multiaddr
EXPOSE 5678
ENTRYPOINT [ "node", "node_modules/.bin/n8n" ]
