class BirdsController < ApplicationController
  def index
  end

  def new
    @bird = Bird.new
  end

  def create
    Bird.create(content: params[:bird][:content])
    redirect_to new_bird_path
  end
end
