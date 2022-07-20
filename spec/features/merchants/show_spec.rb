require 'rails_helper'

RSpec.describe "Merchant Show Page" do
  it "displays a list merchant's items" do
    visit '/merchants/1'

    expect(page).to have_content("Item Nemo Facere")
    expect(page).to have_content("Item Expedita Aliquam")
    expect(page).to have_content("Item Ea Voluptatum")
    expect(page).to have_content("Item Rerum Est")
  end
end
