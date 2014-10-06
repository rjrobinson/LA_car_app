class Car < ActiveRecord::Base
  belongs_to :manufacturers

  validates :model,   presence:     true
  validates :color,   presence:     true
  validates :milage,  presence:     true
  validates :year,    numericality: { greater_than: 1920, less_than: 2018  }


end
