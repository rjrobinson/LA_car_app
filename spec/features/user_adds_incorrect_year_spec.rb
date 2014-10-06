require 'rails_helper'

  feature 'Car salesman adds incorrect year', %Q(

  As a car salesperson
  I want to enter the wrong year
  So that I can get an error

  ) do

  scenario 'Car salesman visits manfucturer index ' do

  manufacturer = FactoryGirl.build(:manufacturer)

  visit new_manufacturer_path

  fill_in 'Name',         with: manufacturer.name
  fill_in 'Country',      with: manufacturer.country

  click_button('Add Manufacturer')

  click_link 'Add Car'

  car = FactoryGirl.build(:car)
  fill_in 'Model',      with: car.model
  fill_in 'Year',       with: 1920
  fill_in 'Color',      with: car.color
  fill_in 'Milage',     with: car.milage

  click_button('Add Car')

  expect(page).to have_content("There was an error. Could not save.")

  end
end
