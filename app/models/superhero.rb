class Superhero < ApplicationRecord
    validates :name, presence:true, length: {minimum:1}
end
