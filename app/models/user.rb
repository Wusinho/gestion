class User < ApplicationRecord
  validates_presence_of :name, :username, :email
  validates_uniqueness_of :email
end
