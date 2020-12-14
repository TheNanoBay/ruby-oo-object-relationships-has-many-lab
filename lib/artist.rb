
class Artist

    attr_accessor :name

    @@all = []


    def initialize(name)
        @name = name

        @@all << self
    end

    def songs #needs to parse through array held by songs class of all sonds ever made and pick out the ones made by this artist 
        Song.all.select{|song| song.artist == self} #parses through the array of songs in the song class... each unit of the array is a song instnace that has an attribute of artist which can be checked against this current instance of artist
    end     

    def add_song(song)
        song.artist = self 
    end

    def add_song_by_name(song_name)
        song_name = Song.new(song_name)
        song_name.artist = self
    end

    def self.song_count
        Song.all.count
    end 

end