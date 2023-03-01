FROM ruby:2.6

RUN apt-get update -y
RUN apt-get install -y nodejs nginx
RUN service nginx stop

RUN gem install bundler
COPY . .
RUN bundle install

ENV NO_CONTRACTS=true
RUN bundle exec middleman build
RUN cp -r build/* /var/www/html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]

