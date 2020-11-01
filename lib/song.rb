#require 'pry'
class Song 

    attr_accessor :name, :artist, :genre 

    @@all = []

    @@count = 0
    @@artists = []
    @@genres = []

    def initialize (name, artist, genre)
        @name = name 
        @artist = artist
        @genre = genre
        @@all << self
        @@artists << artist
        @@genres << genre
        @@count += 1
    end 

    def self.all 
        @@all 
    end 

    def self.count 
        @@count
    end 

    def self.artists
        self.all.map {|songs| songs.artist}.uniq
    end 

    def self.genres 
        self.all.map {|songs| songs.genre}.uniq
    end 

    def self.genre_full 
        #p self.all
        #puts "\n"
        #p @@genres
        self.all.map {|songs| songs.genre}
    end 
    def self.artist_full 
        self.all.map {|songs| songs.artist}
        
    end 

    def self.genre_count
        genre_count = {}
        #puts count 
        #self.genre_full.each do |genre|
        
        @@genres.each do |genre|
            if genre_count[genre]
                genre_count[genre] += 1 
            else 
                genre_count[genre] = 1
            end 
        end 
        genre_count
    end 

    def self.artist_count 
        artists_count = {}
        # puts count 
        # puts artist_full
        #self.artist_full.each do |artist|
        
        @@artists.each do |artist|
            if artists_count[artist]
                artists_count[artist] += 1 
            else 
                artists_count[artist] = 1
            end 
        end 
        artists_count

    end 


end 

#binding.pry