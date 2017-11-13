require('minitest/autorun')
require('minitest/rg')
require_relative('../kareoke_bar.rb')
require_relative('../room.rb')
require_relative('../guest.rb')

class TestKareokeBar < MiniTest::Test

  def setup
    @kareoke_bar = KareokeBar.new("Eliot's Kareoke Emporium")

    @classic_room = Room.new("Classic Room")
    @pop_room = Room.new("Pop Room")
    @rock_room = Room.new("Rock Room")

    @roger = Guest.new("Roger", "The Pretender", 250)
  end

  def test_add_room
    @kareoke_bar.add_room(@classic_room)
    assert_equal(@kareoke_bar.number_of_rooms.count, 1)
  end

  def test_remove_room
    @kareoke_bar.add_room(@classic_room)
    @kareoke_bar.number_of_rooms.pop
    assert_equal(@kareoke_bar.number_of_rooms.count, 0)
  end

  def test_add_money_to_till
    @kareoke_bar.add_money_to_till(10)
    assert_equal(@kareoke_bar.till, 510)
  end

  def test_charge_customer_entry
    @kareoke_bar.charge_customer_entry(@roger)
    assert_equal(@roger.wallet, 200)
  end
end
