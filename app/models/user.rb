class User < ApplicationRecord
  has_many :projects
  validates_presence_of :name, :username
  validates_uniqueness_of :username
  validates :email, presence: true, uniqueness: true, format: { with: /\A[^@\s]+@[^@\s]+\z/ }
end
