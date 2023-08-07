class FoodsController < ApplicationController
  def new
    @food = Food.new
  end

  def create
    food = Food.new(food_params)
    food.save!
    redirect_to foods_url, notice: "新しい食品「#{food.name}」を登録しました"
  end

  private

  def food_params
    params.require(:food).permit(:name, :number, :unit, :purchase, :description)
  end
end
