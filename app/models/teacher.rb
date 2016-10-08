class Teacher < User
  has_many :students, class_name: "User",foreign_key: "teacher_id"
  has_many :courses, foreign_key: "user_id"
  has_many :assignments
end