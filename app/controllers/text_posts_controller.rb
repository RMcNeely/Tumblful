class TextPostsController < ApplicationController
  def index
    @text_posts = TextPosts.all
  end
  
  def show
    @text_posts = TextPosts.find(:id)
  end
  
  def new
  end
  
  def create
  end
  
  def edit
  end
  
  def update
  end
  
  def delete
  end
  
end

