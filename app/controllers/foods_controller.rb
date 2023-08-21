class FoodsController < ApplicationController
  before_action :authenticate_user!, only: [:index, :new, :create, :edit, :update, :destroy]

  def index
    @foods = current_user.foods
  end

  def show
    @food = Food.find(params[:id])
  end

  def new
    @food = current_user.foods.build
  end

  def create
    @food = current_user.foods.build(food_params)
    if @food.save
      redirect_to foods_url, notice: "新しい食品「#{@food.name}」を登録しました"
    else
      render :new
    end
  end

  def edit
    @food = current_user.foods.find(params[:id])
  end

  def update
    @food = current_user.foods.find(params[:id])
    if @food.update(food_params)
      redirect_to foods_url, notice: "食品「#{@food.name}」を更新しました。"
    else
      render :new
    end
  end

  def destroy
    food = current_user.foods.find(params[:id])
    food.destroy
    redirect_to foods_url, notice: "食品「#{food.name}」を削除しました。"
  end

  private

  def food_params
    params.require(:food).permit(:name, :number, :unit, :location, :purchase, :description)
  end
end
