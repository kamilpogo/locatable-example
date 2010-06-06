module Locatable::ModelExtension
  def self.included(klass)
    
    klass.class_eval do
      has_many :investment_locations, :as => :locatable, :dependent => :destroy
      has_many :business_locations, :as => :locatable, :dependent => :destroy
      
      attr_accessible :investment_locations_attributes, :business_locations_attributes  
      accepts_nested_attributes_for :investment_locations, :allow_destroy => true
      accepts_nested_attributes_for :business_locations, :allow_destroy => true
    end
    
    klass.extend(ClassMethods)
    klass.send :include, InstanceMethods
  end

  module InstanceMethods
  end

  module ClassMethods
  end
end
