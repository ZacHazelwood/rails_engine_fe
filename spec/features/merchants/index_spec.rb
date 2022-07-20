require 'rails_helper'

RSpec.describe "Merchants Index Page" do
  it "shows a list of Merchant names" do
    visit "/merchants"

    expect(page).to have_content("Merchant Index")
    expect(page).to have_link("Schroeder-Jerde")
    expect(page).to have_link("Willms and Sons")
  end

  it "links to Merchant Show" do
    visit "/merchants"

    click_link("Schroeder-Jerde")

    expect(current_path).to eq("/merchants/1")
  end
end
