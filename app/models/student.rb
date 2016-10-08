class Student < User
  has_many :teachers, class_name: "User",foreign_key: "student_id"
  has_many :courses, through: :assignments,foreign_key: "student_id" 
  has_many :assignments
end