class Beer < ActiveRecord::Base
    has_many :ratings
    has_many :interests
    has_many :users, through: :ratings
    def average_rating
        self.ratings.average(:rating).to_f.round(2)
    end
    def self.highest_rated
        Beer.all.max_by {|b| b.average_rating}
    end
end