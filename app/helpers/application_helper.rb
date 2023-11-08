module ApplicationHelper
  def close_btn
    base = 'fa-solid fa-xmark'
    content_tag(:i, '', class: base)
  end

  def project_participant_roles(project_participant)
    roles = case project_participant.role
            when 'propietario'
              ProjectParticipant.roles.except('propietario')
            when 'administrador'
              ProjectParticipant.roles.slice('miembro')
            else
              {} # Return an empty hash if there are no roles to display
            end
    roles.map { |key, value| [key.to_s.humanize, value] }.reverse
  end
end
