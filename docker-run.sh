docker run \
  -it \
  --mount type=bind,source="$(pwd)",target=/site \
  --publish 4000:4000 nir-jekyll-github-pages
