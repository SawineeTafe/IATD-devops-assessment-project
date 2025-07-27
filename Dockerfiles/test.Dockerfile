FROM node:20.12-alpine

COPY package.json package-lock.json ./

RUN npm install

COPY src/ ./src/
COPY tests/ ./tests/
COPY jest.config.mjs ./
COPY eslint.config.mjs ./

CMD [ "npm", "test" ]