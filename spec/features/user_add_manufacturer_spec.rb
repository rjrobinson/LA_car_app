require 'rails_helper'

  feature 'Car salesman visits page to add manufacturer', %Q(

  As a car salesperson
  I want to record a car manufacturer
  So that I can keep track of the types of cars found in the lot

  ) do

  scenario 'Car salesman visits manfucturer index ' do

  manufacturer = FactoryGirl.build(:manufacturer)

  visit new_manufacturer_path

  fill_in 'Name',         with: manufacturer.name
  fill_in 'Country',      with: manufacturer.country

  click_button('Add Manufacturer')

  expect(page).to have_content("Manufacturer added!")
  end
end
