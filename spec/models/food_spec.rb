require 'rails_helper'

RSpec.describe Food, type: :model do
  it "Foodモデルをnewしたとき、nilではないこと" do
    expect(Food.new).not_to eq(nil)
  end
end
