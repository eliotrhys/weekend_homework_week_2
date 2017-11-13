require('minitest/autorun')
require('minitest/rg')
require_relative('../kareoke_bar.rb')
require_relative('../room.rb')
require_relative('../song.rb')
require_relative('../guest.rb')

class TestRoom < MiniTest::Test

  def setup
    @classic_room = Room.new("Classic Room")
    @pop_room = Room.new("Pop Room")
    @rock_room = Room.new("Rock Room")

    @my_way = Song.new("My Way", "Frank Sinatra", "Classic")
    @hit_me_baby = Song.new("Hit Me Baby One More Time", "Britney Spears", "Pop")
    @the_pretender = Song.new("The Pretender", "Foo Fighters", "Rock")

    @sarah = Guest.new("Sarah", "My Way")
    @dave = Guest.new("Dave", "Hit Me Baby One More Time")
    @roger = Guest.new("Roger", "The Pretender")
    @mike = Guest.new("Mike", "The Pretender")

  end

  def test_add_song_to_song_list
    @pop_room.add_song_to_song_list(@hit_me_baby)
    assert_equal(@pop_room.song_list.count, 1)
  end

  def test_add_guest_to_room
    @classic_room.add_guest_to_room(@sarah)
    @classic_room.add_guest_to_room(@dave)
    @classic_room.add_guest_to_room(@roger)
    assert_equal(@classic_room.guest_no.count, 3)
  end

  def test_play_song
    @rock_room.add_song_to_song_list(@the_pretender)
    value = @rock_room.play_song(@the_pretender)
    assert_equal("The Pretender", value)
  end

  def test_play_song_2
    @rock_room.add_song_to_song_list(@the_pretender)
    value = @rock_room.play_song(@my_way)
    assert_equal("That song doesn't exist!", value)
  end

  def test_room_capacity
    @classic_room.add_guest_to_room(@sarah)
    @classic_room.add_guest_to_room(@dave)
    @classic_room.add_guest_to_room(@roger)
    @classic_room.add_guest_to_room(@mike)
    value = @classic_room.room_capacity
    assert_equal("No more room!", value)
  end

  def test_favourite_song
    @pop_room.add_guest_to_room(@dave)
    @pop_room.add_song_to_song_list(@hit_me_baby)
    @pop_room.play_song(@hit_me_baby)
    value = @pop_room.favourite_song(@dave, @hit_me_baby)
    assert_equal("Whoo!", value)
  end

  def test_favourite_song_false
    @pop_room.add_guest_to_room(@dave)
    @pop_room.add_song_to_song_list(@my_way)
    @pop_room.play_song(@my_way)
    value = @pop_room.favourite_song(@dave, @my_way)
    assert_equal(value, nil)
  end




end
