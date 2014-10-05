class Manufacturer < ActiveRecord::Base

validates :name,  uniqueness: { message: 'is already in database' },
                  presence: true,
                  length: { minimum: 2 }
                  
validates :country, presence: true

end
