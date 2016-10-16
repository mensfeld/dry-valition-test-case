#!/usr/bin/env bash

rm -f Gemfile.lock
rm -f Gemfile
cp Gemfile.working Gemfile
bundle install
bundle exec rspec spec/
