FROM node:10

WORKDIR /code

ADD package.json package-lock.json ./

RUN npm install

COPY . .

RUN npm run setup -- \
  --spaceId xxxxxxxxxxxxxxxxx \
  --deliveryToken xxxxxxxxxxxxxxxxx \
  --managementToken xxxxxxxxxxxxxxxxx
