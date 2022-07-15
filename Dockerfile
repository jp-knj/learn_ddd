FROM node:18-alpine

# Create app directory
WORKDIR /usr/src/app

# Build app
COPY . .

# Install dependencies
RUN yarn

# use nest command
RUN yarn global add @nestjs/cli

CMD ["yarn", "run", "server"]