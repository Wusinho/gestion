class Project < ApplicationRecord
  has_many :project_participants
  has_many :users, through: :project_participants
  belongs_to :propietario, class_name: 'User', foreign_key: :user_id
  validates_presence_of :title, :status

  enum status: { active: 0, closed: 1, hold: 2 }

  after_create_commit :create_project_participant


  def create_project_participant
    ProjectParticipant.create(role: 0, status:1, project_id: self.id, user_id: propietario.id)
  end

  def missing_participants
    User.where.not(id: users.select(:id))
  end

  def propietario?(user)
    propietario == user
  end


end
