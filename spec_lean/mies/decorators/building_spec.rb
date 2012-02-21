require 'decorators/building'

describe "Decorating buildings" do
  describe "#tall?" do
    subject { Mies::Decorators::Building.new.tall?('skyscrapper') }
    it "verifies skyscrappers as tall" do
      subject.should == true
    end
  end
end
