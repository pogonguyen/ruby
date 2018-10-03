class Professor < ApplicationRecord
    has_many :sections
    has_many :courses, through: :sections
    
    validates :name, presence: true
    validates :name, length: { minimum: 1}

end
