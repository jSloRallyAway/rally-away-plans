class IdeasController < ApplicationController
	before_action(:find_idea, only: [:show, :edit, :update, :destroy])

	def index
		@ideas = Idea.all
	end
	
	def new
		@idea = Idea.new
	end

	def create
		@idea = Idea.create(idea_params)
		redirect_to_idea('Your idea was submitted!')
	end

	def update
		@idea.update(idea_params)	
		redirect_to_idea('Your idea was updated!')

	end

	def destroy # HOW DO WE DO SOFT DELETE? CHECK LESSON 9 on PANOPTO 1:50:00
		@idea.destroy		
		redirect_to(ideas_path, notice: 'Your idea was removed!')
	end

private # any method that's not an action should be a private method

	def find_idea
		@idea = Idea.find(params[:id])
	end

	def idea_params
		params[:idea].permit(:title, :body, :location, :idea_type, :idea_category, :interests)
	end

	def redirect_to_idea(message)
		redirect_to(@idea, notice: message)
	end

end
