#!/usr/bin/env bash

rm -f Gemfile.lock
rm -f Gemfile
cp Gemfile.broken Gemfile
bundle install
bundle exec rspec spec/
