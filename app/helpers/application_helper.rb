module ApplicationHelper

 # Takes input from page and tests content, adds if not blank, per page.
  def full_title(page_title)
    base_title = "CS Portal"
    if page_title.empty?
		base_title
	else
      "#{base_title} | #{page_title}"
    end
end

end
