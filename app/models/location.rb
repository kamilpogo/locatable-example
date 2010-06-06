class Location < ActiveRecord::Base
  belongs_to :locatable, :polymorphic => true
  validates_presence_of :location
end
