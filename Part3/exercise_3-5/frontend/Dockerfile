FROM node:16

EXPOSE 5000

WORKDIR /usr/src/app

COPY . .

RUN npm install

ENV REACT_APP_BACKEND_URL=http://127.0.0.1:80

RUN npm run build

RUN npm install -g serve

RUN useradd -m appuser
USER appuser

CMD ["serve", "-s", "-l", "5000", "build"]
