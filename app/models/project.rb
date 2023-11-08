class Project < ApplicationRecord
  has_many :project_participants
  belongs_to :propietario, class_name: 'User', foreign_key: :user_id
  validates_presence_of :title, :status

  enum status: { active: 0, closed: 1, hold: 2 }

  after_create_commit :create_project_participant


  def create_project_participant
    ProjectParticipant.create(role: 0, project_id: self.id, user_id: propietario.id)
  end


end
