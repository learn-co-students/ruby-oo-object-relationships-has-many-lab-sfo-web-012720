require 'pry'
class Artist
    attr_accessor :name

    def initialize(name)
        @name = name
    end

    def songs
        # look through all songs and makes array
            # of songs that has artist included in it
        Song.all.select {|song| song.artist==self}
    end

    def add_song(song)
        song.artist = self
    end

    # was not running until #songs was made
    def add_song_by_name(name)
        song = Song.new(name)
        song.artist = self
    end
    
    # same issue as add_song_by_name
    def self.song_count
        Song.all.count        
    end
end