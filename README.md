# About repos:

My implementation of algorithms from the book "[Grokking Algorithms](https://www.amazon.com/Grokking-Algorithms-illustrated-programmers-curious/dp/1617292230)" in Ruby

## Get started

```
docker-compose build
docker-compose run --rm ruby bash -c 'bundle install'
```

## Tests

```
docker-compose run --rm ruby bash -c 'bundle exec rake test'
```

## Linter

```
docker-compose run --rm ruby bash -c 'bundle exec rubocop'
```
=)
