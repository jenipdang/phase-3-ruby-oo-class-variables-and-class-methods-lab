class Song
    attr_accessor :name, :artist, :genre

    #class variables that contains all the existing info 
    @@count = 0
    @@genres = []
    @@artists = []

    def initialize(name, artist, genre)
        self.name = name
        self.artist = artist
        self.genre = genre
        @@count += 1
        @@genres << genre
        @@artists << artist
    end

    #class method that returns the numbers of songs creates
    def self.count
        @@count
    end

    #c method that returns a unique array of genres of existing songs
    def self.genres
        @@genres.uniq
    end

    #c method that returns a unique array of artists of existing songs
    def self.artists
        @@artists.uniq
    end

    #c method that returns a hash of genres and the number os songs for the genres 
    def self.genre_count
    #     @@genres.tally
    # end

    ## --- or --- ##
    # def self.genre_count
        # genre_count = {}
        # @@genres.each do |genre| 
        #     if genre_count[genre]
        #         genre_count[genre] += 1
        #     else
        #         genre_count[genre] = 1
           
        #     end
        # end
        #     genre_count
    # end

    ##-- or -- ## 
    # def self.genre_count
    #     genre_count = Hash.new 0; @@genres.each { |genre| genre_count[genre] += 1}; genre_count
    # end

    ##-- or -- #
    @@genres.each_with_object(Hash.new(0)) {|genre, genre_count| genre_count[genre] += 1 }
    end
    #c method that returns a hash of artists and the number os songs for the artists
    def self.artist_count
        @@artists.tally ## replace line 60 - 69
        # artist_count = {}
        # @@artists.each do |artist| 
        #     if artist_count[artist]
        #         artist_count[artist] += 1
        #     else
        #         artist_count[artist] = 1
           
        #     end
        # end
        #     artist_count
    end

end
