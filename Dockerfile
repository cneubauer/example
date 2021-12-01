FROM ruby:3.0.2-alpine3.14

COPY . /example/

WORKDIR /example

RUN bundle install
RUN bundle exec rake install

ENTRYPOINT [ "ls", "-al" ]
