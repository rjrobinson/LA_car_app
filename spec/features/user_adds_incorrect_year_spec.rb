require 'rails_helper'

  feature 'Car salesman visits page to add manufacturer', %Q(

  As a car salesperson
  I want to enter a year less then 1920
  So that I can get an error, because those cars are too old. 

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
  fill_in 'Year',       with: 1910
  fill_in 'Color',      with: car.color
  fill_in 'Milage',     with: car.milage

  click_button('Add Car')

  expect(page).to have_content("There was an error. Could not save.")

  end
end
