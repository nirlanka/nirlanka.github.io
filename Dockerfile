FROM ruby:3.3

ENV APP_PATH=/site
WORKDIR $APP_PATH

COPY . .
RUN gem install --default --conservative jekyll -v '~>4.3.3' 
RUN gem install --default --conservative bundler -v '~>2.4' 
RUN bundle install 

CMD ["bundle", "exec", "jekyll", "serve", "--host=0.0.0.0", "--incremental", "--livereload"]

