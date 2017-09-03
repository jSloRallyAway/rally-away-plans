class IdeasController < ApplicationController
	# before_action(:find_idea, only: [:show, :edit, :update, :destroy])

	def index
		@ideas = Idea.all
	end
	
	def new
		@idea = Idea.new
	end

	def create
		@idea = Idea.create(idea_params)
	end

private
	# def find_idea
	# 	@idea = Idea.find(params[:id])
	# end

	def idea_params
		params[:idea].permit(:title, :body, :location, :idea_type, :idea_category, :interests)
	end

end
