module ApplicationHelper

  def page_title
    "PerkyCrow | " + (content_for?(:title) ? content_for(:title) : "Telling tales through indie games")
  end


  def page_description
    content_for?(:description) ? content_for(:description) : "PerkyCrow an indie game studio. We are currently working on UndeadJS, an interactive book, The Mistbrewer, a casual game, and Kalah an adventure 2D game."
  end


  def page_keywords
    content_for?(:keywords) ? content_for(:keywords) : "indie games, game development, game design, game art, game music, game sound, game programming, dreamless, mistbrewer, undeadjs"
  end

  def page_image
    content_for(:image)
  end

  def page_url
    content_for(:url)
  end

end
