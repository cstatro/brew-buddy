class User < ActiveRecord::Base
    has_many :ratings
    has_many :beers, through: :ratings
end