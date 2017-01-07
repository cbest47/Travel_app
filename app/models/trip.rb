class Trip < ApplicationRecord
  belongs_to :user
  validates :name, :city, :country, :date, presence: true
  
end
