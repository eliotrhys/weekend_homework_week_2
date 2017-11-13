class KareokeBar

  attr_accessor :name, :number_of_rooms, :till

  def initialize(name)
    @name = name
    @number_of_rooms = []
    @till = 500
  end

  def add_room(room)
    @number_of_rooms << room
  end

  def add_money_to_till(amount)
    @till += amount
  end

  def charge_customer_entry(customer)
    customer.wallet -= 50
  end

end
