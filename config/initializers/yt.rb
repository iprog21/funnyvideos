Yt.configure do |config|
  config.api_key = Figaro.env.youtube_api
end