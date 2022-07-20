require 'rails-helper'

RSpec.describe "Merchants Index Page" do

  it "shows a list of Merchant names" do
    visit "/merchants"

    expect(page).to have_content("Merchant Index")
    expect(page).to have_link("Schroeder-Jerde")
    expect(page).to have_link("Willms and Sons")
  end
end
