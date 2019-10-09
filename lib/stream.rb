require 'dotenv'
require 'twitter'
Dotenv.load('.env')

def perform

	client = Twitter::Streaming::Client.new do |config|
	  config.consumer_key        = "YOUR_CONSUMER_KEY"
	  config.consumer_secret     = "YOUR_CONSUMER_SECRET"
	  config.access_token        = "YOUR_ACCESS_TOKEN"
	  config.access_token_secret = "YOUR_ACCESS_SECRET"
	end
	
	client.sample do |object|
	  puts object.text if object.is_a?(Twitter::Tweet)
	end

	

end
perform




















