require 'test_helper'

class ProjectTest < ActiveSupport::TestCase
  should_validate_presence_of :name
  should_validate_presence_of :description
  
  should_have_many :investment_locations
  should_have_many :business_locations
  

  def test_should_be_valid
    assert Project.new(:name => "name", :description => "description").valid?
  end
end
