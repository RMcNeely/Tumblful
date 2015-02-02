class ImageLinksController < ApplicationController
  def index
    @image_link = ImageLink.all
  end
  
  def show
    @image_link = ImageLink.find(params[:id])
  end
  
  def new
    @image_link = ImageLink.new(url: params[:image_link][:url], title: params[:image_link][:title])
    if @image_link.save
      redirect_to :index
    else
      @errors = @image_link.errors
      render :new
    end
  end
  
  def edit
    @image_link = ImageLink.find(params[:id])
    if @image_link.update(link: params[:image_link][:url], title: params[:image_link][:title] )
    else
      @errors = @image_link.errors
      render :edit
    end
  end
  
  def create
    @image_link = ImageLink.find(image_link_params[:id])
    if @image_link.save
      redirect_to :index
    else
      @errors = @image_link.errors
      render :new
    end
  end
  
  def update
    @image_link = ImageLink.find(image_link_params[:id])
    if @image_link.update(image_link_params: [:url][:image_link], title: params[:image_link][:title])
      redirect_to :index
    else 
      @errors = @image_link.errors
      render :edit
    end
  end

  def delete
    @image_link = ImageLink.all
  end      
end

private
def image_link_params
  params.require(:image_link).permit(:url, :title)
end