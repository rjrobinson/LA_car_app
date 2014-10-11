class Manufacturer < ActiveRecord::Base

has_many :cars


validates :name,  uniqueness: { message: 'is already in database' },
                  presence: true,
                  length: { minimum: 2 }

validates :country, presence: true

end
