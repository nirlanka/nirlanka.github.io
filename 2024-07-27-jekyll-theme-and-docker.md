---
title: Docker + Jekyll 
layout: post
---

# Docker + Jekyll + Theme

## Docker

### ./Dockerfile

```docker
FROM ruby:3.3

ENV APP_PATH=/site
WORKDIR $APP_PATH

COPY . .
RUN gem install --default --conservative jekyll -v '~>4.3.3' 
RUN gem install --default --conservative bundler -v '~>2.4' 
RUN bundle install 

CMD ["bundle", "exec", "jekyll", "serve", "--host=0.0.0.0", "--incremental", "--livereload"]
```

### ./docker-build.sh

Build image with with a tag from current directory

```sh
docker build --tag nir-jekyll-github-pages . 
docker image ls | head
echo '[shortened]'
```

### ./docker-run.sh

Run docker with bound mount, publish port

```sh
docker run \
  -it \
  --mount type=bind,source="$(pwd)",target=/site \
  --publish 4000:4000 nir-jekyll-github-pages
```

