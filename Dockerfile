FROM node:lts

ENV TZ=Asia/Bangkok

WORKDIR /usr/src/app

COPY . /usr/src/app/

RUN npm install -g typescript

RUN npm install

RUN tsc -p .

CMD ["npm","start"]

EXPOSE 80
