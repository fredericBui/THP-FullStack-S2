class City < ApplicationRecord
    has_many :dogs
    has_many :users
end
