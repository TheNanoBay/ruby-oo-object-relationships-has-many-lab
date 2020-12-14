
class Song

    attr_accessor :name, :artist
    attr_writer :artist
    @@all = []

    def initialize(name)
        @name = name
        @artist #artist in this case eventually gets set to an instnace of the artist class via new_song.artist = drake
        @@all << self
    end

    def self.all #returns the array of all the songs ever created by any artist 
        @@all
    end 

    def artist_name
        artist.name if artist #returns the (instnace of artist) name if the artist does exist.. otherwise nil
    end 

end 