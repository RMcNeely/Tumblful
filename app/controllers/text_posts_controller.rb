class TextPostsController < ApplicationController
  def index
    @text_posts = TextPosts.all
  end
end

