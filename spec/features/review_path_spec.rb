require 'rails_helper'

describe "the category management path" do
  before do
    @review = FactoryBot.create(:review)
    @product = @review.product
    @user = @product.user
    visit '/users/sign_in'
    fill_in "Email", with: @user.email
    fill_in "Password", with: @user.password
    click_button "Log in"
  end

  it "allows a user to add a new review to a product" do
    visit product_path(@product)
    fill_in "Add a Comment", with: "Test Comment."
    click_button "Create Review"
    expect(page).to have_content("Test Comment.")
  end
end
