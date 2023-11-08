class Project < ApplicationRecord
  belongs_to :propietario, class_name: 'User', foreign_key: :user_id
  validates_presence_of :title, :status

  enum status: { active: 0, closed: 1, hold: 2 }
end
