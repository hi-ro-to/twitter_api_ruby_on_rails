require 'tweetstream'
require "open-uri"
require "parallel"
require "fileutils"

module Tasks
    class TwitterStream
        def initialize
            TweetStream.configure do |config|
              config.consumer_key       = "YOUR_CONSUMER_KEY"
              config.consumer_secret    = "YOUR_CONSUMER_SECRET"
              config.oauth_token        = "YOUR_OAUTH_TOKEN"
              config.oauth_token_secret = "YOUR_OAUTH_TOKEN_SECRET"
              config.auth_method        = :oauth
            end
        end

        def runTask
            stream()
        end

        def stream()
          # set twitter id in param
          TweetStream::Client.new.follow(770836035710267392) do |status|
            next unless status.lang == "ja"
            next if status.text.index("RT")
            p "#{status.user.screen_name} #{status.text}"
          end
        end
    end
end

twitterStream = Tasks::TwitterStream.new
twitterStream.runTask
