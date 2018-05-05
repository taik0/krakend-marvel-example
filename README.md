# My first fullstack MVP

This is the example used in [this blog post](http://www.krakend.io/blog/my-first-fullstack-mvp/).

Can be used as simple example of how to run KrakenD and api2html too.

## Marvel API key

You need an Marvel comics API Key to run this example:

https://developer.marvel.com/

## Build KrakenD and api2html

You need docker to make this example work as is (everything is compiled using docker, you don't need go)

```
make build_krakend
make build_api2html
```

This will generate 2 docker containers:

- devopsfaith/krakend:custom
- devopsfaith/api2html:latest

## Running the example

You can run a `docker-compose up` to bring the system up.

Testing:
```
curl -i http://localhost:8081/character/Wolverine
```
