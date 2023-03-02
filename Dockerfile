FROM ruby:2.6

RUN apt-get update -y
RUN apt-get install -y nodejs

RUN gem install bundler
COPY . .
RUN bundle install
ENV NO_CONTRACTS=true
RUN bundle exec middleman build

FROM nginx
RUN service nginx stop
COPY --from=0 build/ /etc/nginx/html/
COPY nginx.conf /etc/nginx/
CMD ["nginx", "-g", "daemon off;"]

