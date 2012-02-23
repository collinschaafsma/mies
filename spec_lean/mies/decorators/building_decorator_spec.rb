require 'decorators/building_decorator'

describe "Decorating buildings" do
  describe "#tall?" do
    subject { Mies::Decorators::BuildingDecorator.new.tall?('skyscrapper') }
    it "verifies skyscrappers as tall" do
      subject.should == true
    end
  end
end
