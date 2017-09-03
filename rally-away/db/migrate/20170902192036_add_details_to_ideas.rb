class AddDetailsToIdeas < ActiveRecord::Migration
  def change
  	add_column(:ideas, :title, :string)
  	add_column(:ideas, :body, :text)
  	add_column(:ideas, :location, :string)
  	add_column(:ideas, :idea_type, :string)
  	add_column(:ideas, :idea_category, :string)
  	add_column(:ideas, :interests, :string)

  end
end
