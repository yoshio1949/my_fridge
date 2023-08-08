class FoodsController < ApplicationController
  def index
    @foods = Food.all
  end

  def show
    @food = Food.find(params[:id])
  end

  def new
    @food = Food.new
  end

  def create
    food = Food.new(food_params)
    food.save!
    redirect_to foods_url, notice: "新しい食品「#{food.name}」を登録しました"
  end

  def edit
    @food = Food.find(params[:id])
  end

  def update
    food = Food.find(params[:id])
    food.update!(food_params)
    redirect_to foods_url, notice: "食品「#{food.name}」を更新しました。"
  end

  def destroy
    food = Food.find(params[:id])
    food.destroy
    redirect_to foods_url, notice: "食品「#{food.name}」を削除しました。"
  end

  private

  def food_params
    params.require(:food).permit(:name, :number, :unit, :purchase, :description)
  end
end
