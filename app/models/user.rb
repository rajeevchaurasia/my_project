class User < ApplicationRecord
  validates :role, presence: true
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
