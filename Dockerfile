FROM node:9.6.1

ENV APP_HOME /app
ENV PORT 8000

COPY . $APP_HOME
WORKDIR $APP_HOME

ENV NODE_ENV development
ENV PATH $APP_HOME/node_modules/.bin:$PATH

RUN npm install
RUN npm install react-scripts

EXPOSE $PORT