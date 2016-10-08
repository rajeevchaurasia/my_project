class Course < ApplicationRecord
  belongs_to :teacher, :foreign_key => 'user_id'
  has_many :assignments
  has_many :students, through: :assignments, :foreign_key => 'student_id'
end
