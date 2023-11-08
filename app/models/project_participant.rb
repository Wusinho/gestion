class ProjectParticipant < ApplicationRecord
  belongs_to :user
  belongs_to :project
  enum role: { propietario: 0, administrador: 1, miembro: 2 }
  enum status: { unanswered: 0, accepted: 1, declined: 3 }

  validates_presence_of :role
end
