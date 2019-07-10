class User < ActiveRecord::Base
    has_many :ratings
    has_many :interests
    has_many :beers, through: :ratings
    def rate_beer(hash)
        beer = Beer.find_or_create_by(name: hash["name"],style: hash["style"]["shortName"],abv: hash["abv"],brewery: hash["breweries"].first["name"])
        prompt_for_rating
        input = STDIN.gets.chomp
        input = input.to_f
        input = limit_rating(input)
        rating = Rating.create(user: self,beer: beer, rating: input.to_f)  
    end
    def save_interest(hash)
        beer = Beer.find_or_create_by(name: hash["name"],style: hash["style"]["shortName"],abv: hash["abv"],brewery: hash["breweries"].first["name"])
        rating = Interest.create(user: self,beer: beer)  
    end


    def display_ratings
        self.ratings.each_with_index do |rating,index|
            puts "#{index+1}. #{rating.beer["name"]} - #{rating.rating}"
        end
    end

    def display_interests
        self.interests.each_with_index do |interest, index|
            puts "#{index+1}. #{interest.beer["name"]} - #{interest.beer["brewery"]}"
        end
    end

    def self.drunkest
        User.all.max_by {|user| user.beers.average(:abv).to_f }
    end

    def beers_interested_in
        self.interests.map {|i| i.beer}
    end

end