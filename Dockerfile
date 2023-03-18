FROM  public.ecr.aws/docker/library/node:18
RUN npm install -g n8n@0.220.0
EXPOSE 5678
ENTRYPOINT [ "n8n" ]
