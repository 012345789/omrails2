module ApplicationHelper

	# Returns the full title if the page doesn't have a page_title
	def full_title(page_title)
		# Defines the base_title. Change this eventually with new domain name
		base_title = "PS-Guru"
		if page_title.empty?
			base_title
		else
			"#{base_title} | #{page_title}"
		end
	end
end
