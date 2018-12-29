# docker build -t --rm theia-ruby .
# docker run -d -v YOUR_RUBY_PROJECT_ROOT:/source -p 3000:3000 theia-ruby
# open http://localhost:3000/#/source
FROM alpine

USER root

RUN apk add python
RUN apk add make
RUN apk add g++
RUN apk add yarn

ENV PATH="/usr/bin:${PATH}"

RUN apk add ruby
RUN apk add ruby-dev

RUN gem install ruby_language_server --no-document

WORKDIR /ruby-ide/theia-ruby-extension
COPY . .

RUN yarn

WORKDIR /ruby-ide/theia-ruby-extension/browser-app
CMD yarn start --hostname 0.0.0.0 /source
