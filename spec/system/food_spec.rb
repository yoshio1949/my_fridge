require "rails_helper"

RSpec.describe "foods", type: :system do
  it "GET /foods" do
    visit "/foods"
    expect(page).to have_text("aaaaaa")
  end
end
