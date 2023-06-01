class BirdsController < ApplicationController
  before_action :set_bird, only: [:show, :edit, :update, :destroy]

  def index
    @birds = Bird.all
  end

  def new
    @bird = Bird.new
  end

  def create
    @bird = Bird.new(bird_params)
    if params[:back]
      render :new 
    else
      if @bird.save
        redirect_to birds_path, notice: "あなたのつぶやきが作成されました。"
      else
        render :new
      end
    end
  end

  def show
    @bird = Bird.find(params[:id])
  end

  def edit
    @bird = Bird.find(params[:id])
  end
  
  def update
    @bird = Bird.find(params[:id])
    if @bird.update(bird_params)
      redirect_to birds_path, notice:"編集できました。"
    else
      render :edit
    end
  end

  def destroy
    @bird.destroy
    redirect_to birds_path, notice:"削除しました。"
  end

  def confirm
    @bird = Bird.new(bird_params)
    render :new if @bird.invalid?
  end

  private

  def bird_params
    params.require(:bird).permit(:content)
  end

  def set_bird
    @bird = Bird.find(params[:id])
  end

end
