module IdeasHelper # a module is a class that you can't create instances of 
	
	def edit_idea_link(idea)
		link_to('Edit', edit_idea_path(idea))
	end

	def delete_idea_link(idea)
		link_to('Delete', idea, method: :delete, data: {confirm: 'Are you sure?'})
	end
end
