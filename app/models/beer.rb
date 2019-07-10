class Beer < ActiveRecord::Base
    has_many :ratings
    has_many :interests
    has_many :users, through: :ratings

end