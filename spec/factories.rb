FactoryGirl.define do
  factory :manufacturer do
    id '1'
    name 'Ford Motor Company'
    country 'United States of America'
  end
end


FactoryGirl.define do
  factory :car do
    model 'F-150'
    year '1980'
    color 'black'
    milage '23989'
  end
end
