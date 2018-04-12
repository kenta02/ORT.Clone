class TagsController < ApplicationController

def index
end

def show
  @id = ActsAsTaggableOn::Tag.find_by(id: params[:id])
  @posts = User.find_by(id: current_user.id).posts.tagged_with(@id).order(created_at: :desc)
end


end