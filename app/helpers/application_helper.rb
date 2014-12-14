module ApplicationHelper

  def nav_link(text, path, &block)
    class_name = current_page?(path) ? 'current' : ''
    content_tag(:li, class: class_name) do
      link_to text.html_safe, path
    end
  end

end