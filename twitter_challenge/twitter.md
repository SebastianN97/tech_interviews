Step 1:
- gem install twitter


Step 2:
- Open irb/pry and require the gem
- require 'twitter'


Step 3:

client = Twitter::REST::Client.new do |config|
  config.consumer_key        = "yyoq45A0qFIyFwtx9R9p5vBih"
  config.consumer_secret     = "DMRcr14eQoiEDmTpUvY6PlTV2eXphqd2BNppNCzeZJnWtBwp7t"
  config.access_token        = "1027845479089033216-LYJJTScjKT7E6WunXPQY51pdfbL67s"
  config.access_token_secret = "HwXmJSsNDoRrZLpw8iV9s2QzNpuwNHPGhOS2oAiXljf3d"
end


Step 4:

client.search("CraftAcademySE", result_type: "recent").take(5).collect do |tweet|
  "#{tweet.user.screen_name}: #{tweet.text}"
end

