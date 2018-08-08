class Superhero < ApplicationRecord
    validates :name, presence:true, length: {minimum:1}

    def self.search(search)
        where("superpower_name LIKE ?", "%#{search}%") 
      end
end
