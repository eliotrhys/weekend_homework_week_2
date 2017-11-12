class Room

  attr_accessor :name, :guest_no, :song_list

  def initialize(name)
    @name = name
    @guest_no = []
    @song_list = []
  end


  def add_song_to_song_list(song)
    @song_list << song
  end

  def add_guest_to_room(guest)
    @guest_no << guest
  end

  def play_song(song)
    for x in @song_list
      if @song_list.include?(song)
        return song.title
      else
        return "That song doesn't exist!"
      end
    end
  end

  def room_capacity
    if @guest_no.count > 3
      return "No more room!"
    else
      return "Still room!"
    end
  end

  def favourite_song(guest, song)
    if song.title == guest.favourite_song
      return "Whoo!"
    end
  end


end
