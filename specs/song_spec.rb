require('minitest/autorun')
require('minitest/rg')
require_relative('../kareoke_bar.rb')
require_relative('../room.rb')
require_relative('../song.rb')
require_relative('../guest.rb')

class TestSong < MiniTest::Test
  def setup
    @my_way = Song.new("My Way", "Frank Sinatra", "Classic")
    @hit_me_baby = Song.new("Hit Me Baby One More Time", "Britney Spears", "Pop")
    @the_pretender = Song.new("The Pretender", "Foo Fighters", "Rock")
  end
end
