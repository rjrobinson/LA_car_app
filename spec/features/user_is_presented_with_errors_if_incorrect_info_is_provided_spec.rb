require 'rails_helper'

  feature 'Car salesman tries to add manufacturer without name', %Q(

  As a car salesperson
  I want to record a car manufacturer, but be presented with an error
  So that I can correct my mistakes

  ) do

  scenario 'Car salesman visits manfucturer index ' do

  manufacturer = FactoryGirl.build(:manufacturer)

  visit new_manufacturer_path

  fill_in 'Name',         with: ''
  fill_in 'Country',      with: manufacturer.country

  click_button('Add Manufacturer')

  expect(page).to have_content("There was an error. Could not save.")
  end
end
