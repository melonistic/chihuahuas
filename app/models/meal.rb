class Meal < ApplicationRecord
  validates :short_name, :description,
            presence: true

  belongs_to :chef
  has_and_belongs_to_many :cuisine
  has_and_belongs_to_many :dietary_accommodation

end