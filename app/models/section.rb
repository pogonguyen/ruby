class Section < ApplicationRecord
  belongs_to :course
  belongs_to :professor
  has_many :enrollments
  has_many :students, through: :enrollments
  
    validates :number, presence: true
    validates :number, format: {with: /\A\d+\z/, message: "Positive Integers Only!"}
end
