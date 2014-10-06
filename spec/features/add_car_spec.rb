require 'rails_helper'

  feature 'Car salesman visits page to add car', %Q(

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

  click_link 'Add Car'

  car = FactoryGirl.build(:car)

  select manufacturer.name, from: 'Manufacturer'
  fill_in 'Model',      with: car.model
  fill_in 'Year',       with: car.year
  fill_in 'Color',      with: car.color
  fill_in 'Milage',     with: car.milage

  click_button('Add Car')

  expect(page).to have_content("Car added!")

  end
end
