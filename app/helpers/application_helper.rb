module ApplicationHelper

  def page_title
    "PerkyCrow | " + (content_for?(:title) ? content_for(:title) : "Indie Game Developer")
  end

end
