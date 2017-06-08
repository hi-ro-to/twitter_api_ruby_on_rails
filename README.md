# twitter_api_ruby_on_rails

This is the script to get easily all tweets of specified twitter account by Twitter API.

This script uses ruby on rails and [tweetstream](https://github.com/tweetstream/tweetstream).

# Gemfile

`gem 'tweetstream'`

# Run command

`rails runner lib/tasks/twitter_stream.rb`

if use Docker,

`$ docker-compose run web rails runner lib/tasks/twitter_stream.rb`
