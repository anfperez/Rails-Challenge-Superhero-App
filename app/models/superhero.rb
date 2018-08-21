class Superhero < ApplicationRecord
    belongs_to :superpower
    validates :name, presence:true, length: {minimum:1}
    validates :super_name, :presence => true, :uniqueness => true

    def superpower_name
        self.superpower.name
    end

    def self.search(search)
        where("superpower_name LIKE ?", "%#{search}%") 
    end
end
