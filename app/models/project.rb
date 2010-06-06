class Project < ActiveRecord::Base
  include Locatable::ModelExtension
  
  attr_accessible :name, :description
  validates_presence_of :name, :description
end
