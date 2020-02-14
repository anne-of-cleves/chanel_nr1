module ApplicationHelper
  def icon_tag(icon_name, context_class = 'primary', title = '')
    class_str = "fas fa-#{icon_name} text-#{context_class} fa-lg"
    content_tag(:i, '', class: class_str, title: title)
  end
end
