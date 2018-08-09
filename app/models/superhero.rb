class Superhero < ApplicationRecord
    has_one :superpower
    validates :name, presence:true, length: {minimum:1}
    validates :super_name, :presence => true, :uniqueness => true

    def self.search(search)
        where("superpower_name LIKE ?", "%#{search}%") 
      end
end
