class User < ActiveRecord::Base
    has_many :ratings
    has_many :beers, through: :ratings
    def rate_beer(hash)
        beer = Beer.create(name: hash[:name],style: hash[:style][:shortName],abv: hash[:abv])
        prompt_for_rating
        input = STDIN.gets.chomp
        rating = Rating.create(user: self,beer: beer, rating: input.to_f)  
    end
end