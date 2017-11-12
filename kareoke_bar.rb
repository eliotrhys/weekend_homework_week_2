class KareokeBar

  attr_accessor :name, :number_of_rooms

  def initialize(name)
    @name = name
    @number_of_rooms = []
  end

  def add_room(room)
    @number_of_rooms << room
  end

end
