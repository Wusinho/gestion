class ProjectParticipant < ApplicationRecord
  belongs_to :user
  belongs_to :project
  enum role: { propietario: 0, administrador: 1, miembro: 2  }

  validates_presence_of :role
end
