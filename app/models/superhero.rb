class Superhero < ApplicationRecord
    belongs_to :superpower
    validates :name, presence:true, length: {minimum:1}
    validates :super_name, :presence => true, :uniqueness => true

    def superpower_name
        self.superpower.name
    end

    def self.search(search)
        superpower_ids = Superpower.where("name LIKE ?", "%#{search}%").ids
        where(superpower_id: superpower_ids)
      end
end
