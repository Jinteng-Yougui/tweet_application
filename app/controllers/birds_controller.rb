class BirdsController < ApplicationController
  def index
    @birds = Bird.all
  end

  def new
    @bird = Bird.new
  end

  def create
    Bird.create(bird_params)
    redirect_to new_bird_path
  end

  private

  def bird_params
    param.require(:bird).permit(:content)
  end
end
