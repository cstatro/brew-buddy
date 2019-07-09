class User < ActiveRecord::Base
    has_many :ratings
    has_many :beers, through: :ratings
    def rate_beer(hash)
        beer = Beer.find_or_create_by(name: hash["name"],style: hash["style"]["shortName"],abv: hash["abv"])
        prompt_for_rating
        input = STDIN.gets.chomp
        input = input.to_f
        input = limit_rating(input)
        rating = Rating.create(user: self,beer: beer, rating: input.to_f)  
    end

    def display_ratings
        self.ratings.each_with_index do |rating,index|
            puts "#{index+1}. #{rating.beer["name"]} - #{rating.rating}"
        end
    end
    
end