FROM node:16-alpine AS build-stage

WORKDIR /usr/src/app

COPY . .

ENV REACT_APP_BACKEND_URL=http://127.0.0.1:80

RUN npm install && npm run build && npm install -g serve





FROM node:16-alpine

WORKDIR /usr/src/app

COPY --from=build-stage /usr/src/app/build/ /usr/src/app/build/

RUN npm install -g serve

USER 405

CMD ["serve", "-s", "-l", "5000", "build"]
