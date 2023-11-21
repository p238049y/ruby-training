FROM ruby:3.2.2
RUN apt-get update -qq
RUN curl -fsSL https://deb.nodesource.com/setup_lts.x | bash - \
&& apt-get install -y nodejs
RUN npm install --global yarn

WORKDIR /app

COPY Gemfile /app/Gemfile
COPY Gemfile.lock /app/Gemfile.lock

RUN bundle install

ENV LANG=ja_JP.UTF-8
ENV TZ=Asia/Tokyo

CMD ["rails", "server", "-b", "0.0.0.0"]