class SearchController < ApplicationController
  def index

  end

  def show
    Dotenv.load

    Rockstar.lastfm = {:api_key => ENV['LASTFM_API_KEY'], :api_secret => ENV['LASTFM_SECRET_KEY']}
    artist = Rockstar::Artist.new('Coldplay', :include_info => true)

    puts 'hello'
    puts artist.url
    puts artist.inspect

    puts 'Similar Artists'
    puts "=" * 15
    artist.similar.each { |a| puts "(#{a.match}%) #{a.name}" }
  end
end
