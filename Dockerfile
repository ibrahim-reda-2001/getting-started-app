FROM node:18-alpine
WORKDIR /app
COPY . .
RUN yarn install --production && yarn cashe clean
ENTRYPOINT [ "node" ]
CMD [ "src/index.js" ]
EXPOSE 3000