require "pry"

class Song
    attr_accessor :name, :artist, :genre
    attr_reader
    attr_writer

    @@count = 0
    @@genres = []
    @@artists = []

    def initialize name, artist, genre
        @name = name
        @artist = artist
        @genre = genre

        @@count += 1
        @@genres.push(genre)
        @@artists.push(artist)
    end

    def self.count
        @@count
    end

    def self.genres
        @@genres.map{ |g| g }.uniq
    end

    def self.artists
        @@artists.map{ |a| a }.uniq
    end

    def self.genre_count
        @@genres.tally
    end

    def self.artist_count
        @@artists.tally
    end

    # binding.pry

end