require('minitest/autorun')
require('minitest/rg')
require_relative('../kareoke_bar.rb')
require_relative('../room.rb')
require_relative('../song.rb')
require_relative('../guest.rb')

class TestGuest < MiniTest::Test
  def setup
    @sarah = Guest.new("Sarah", "My Way")
    @dave = Guest.new("Dave", "Hit Me Baby One More Time")
    @roger = Guest.new("Roger", "The Pretender")
  end
end
