require "pry"

class Song
    attr_accessor :name, :artist, :genre

    @@count = 0
    @@genres = []
    @@artists = []

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@genres << genre
        @@artists << artist
    end

    def self.count 
        @@count
    end

    def self.genres
        unique_genres = @@genres.uniq
        unique_genres
    end

    def self.artists
        unique_artists = @@artists.uniq
        unique_artists
    end

    def self.genre_count
        all_genres = @@genres
        final_array = {}
        final = final_array[all_genres.group_by{ |v| v }.flat_map{ |k, v| [k, v.size] }]
        # binding.pry
        # all_genres = @@genres
        # final_array = {}
        # compiled_genres = all_genres.each do |genre|
        #     binding.pry
        #     # genre ||= self.genre
        #     genre 
        #     # genre_array ||= []
        #     genre_array << genre
        #     # genre: genre_array.count
        
        
        
        # @@genres.map do |genre|
        #     binding.pry
        #     genre_count_array = []
        #     genre_count_array << {genre: genre.count}
        #     genre_count_array
        #     binding.pry
        
        # binding.pry
    end
    # binding.pry
end

Song.new("MONTERO", "Lil Nas X", "rap")
Song.new("99 Problems", "Jay-Z", "rap")
Song.new("Countdown", "Beyonce", "pop")
Song.new("99 Problems", "Jay-Z", "rap")
Song.new("99 Problems", "Jay-Z", "hip hop")
Song.new("Crazy In Love", "Beyonce", "rap")

Song.genre_count
# binding.pry
