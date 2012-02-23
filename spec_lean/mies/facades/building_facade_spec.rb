require 'spec_helper'
require 'active_record'
require 'facades/building_facade'
require File.dirname(__FILE__) + "/../../../app/models/building"

describe "Facade to Building model" do
  subject { Mies::Facades::BuildingFacade.new }

  before(:all) do
    config = YAML.load(File.read(File.dirname(__FILE__) + "/../../../config/database.yml"))
    ActiveRecord::Base.establish_connection(config['test'])
  end

  describe "#new_building" do
    it "should be a new instance of the Building model" do
      subject.new_building.attributes.should == Building.new.attributes
    end
  end

  describe "#build" do
    it "should persist a new building" do
      building = subject.build(name: "One Illinois Center", location: "Chicago, IL")
      subject.find(building.id).name.should == "One Illinois Center"
    end
  end
end
