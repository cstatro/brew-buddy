class User < ActiveRecord::Base
    has_many :ratings
    has_many :interests
    has_many :beers, through: :ratings]
    
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
        user_ratings = self.ratings.sort_by do |rating|
            rating.rating
        end.reverse
        user_ratings.each do |rating|
            puts "#{rating.rating} - #{rating.beer["name"]}"
        end
    end
  
    def display_interests
        self.interests.each_with_index do |interest, index|
            puts "#{index+1}. #{interest.beer["name"]} - #{interest.beer["brewery"]}"
        end
    end

    def delete_interest(input)
        record = self.interests[input.to_i-1]
        record.delete
        record.save
    end
    
    def self.drunkest
        User.all.max_by {|user| user.beers.average(:abv).to_f }
    end

    def beers_interested_in
        self.interests.map {|i| i.beer}
    end

    def average_rating
        self.ratings.average(:rating).to_f.round(2)
    end
    def highest_rated_beer
        self.ratings.max_by {|r| r.rating}
    end
   
end