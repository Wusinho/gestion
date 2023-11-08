class User < ApplicationRecord
  has_many :projects
  has_many :project_participants
  validates_presence_of :name, :username
  validates_uniqueness_of :username
  validates :email, presence: true, uniqueness: true, format: { with: /\A[^@\s]+@[^@\s]+\z/ }
end
