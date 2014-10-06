require 'rails_helper'

  feature 'Car salesman tries to add a new car', %Q(

  As a car salesperson
  I want to record a newly acquired car
  So that I can list it in my lot

  ) do

  scenario 'Car salesman visits add car index' do

  manufacturer = FactoryGirl.build(:manufacturer)
  car  = FactoryGirl.build(:car)

  visit root_path

  click_link 'Add new manufacturer'

  fill_in 'Name',         with: manufacturer.name
  fill_in 'Country',      with: manufacturer.country

  click_button('Add Manufacturer')

  click_link 'Ford'

  click_link 'Add Car'

  fill_in 'Model',      with: car.model
  fill_in 'Year',       with: car.year
  fill_in 'Color',      with: car.color
  fill_in 'Milage',     with: car.milage

  click_button('Add Car')

  expect(page).to have_content("Car Added")
  end
end
