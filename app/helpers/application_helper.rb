module ApplicationHelper
  def close_btn
    base = 'fa-solid fa-xmark'
    content_tag(:i, '', class: base)
  end
end
