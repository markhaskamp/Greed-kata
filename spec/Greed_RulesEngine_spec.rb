require 'rspec'
require File.dirname(__FILE__) + '/../lib/Greed_RulesEngine.rb'

describe Greed_RulesEngine do
  it "a single 1 is 100" do
    Greed_RulesEngine.roll([1]).should == 100
  end
  
  it "triple ones = 1000" do
    Greed_RulesEngine.roll([1,1,1]).should == 1000
  end

  it "1,1,1,1 = 1100" do
    Greed_RulesEngine.roll([1,1,1,1]).should == 1100
  end

  it "5 = 50" do
    Greed_RulesEngine.roll([5]).should == 50
  end

  it "5,5,5 = 500" do
    Greed_RulesEngine.roll([5,5,5]).should == 500
  end
 
  it "4,4,4 = 400" do
    Greed_RulesEngine.roll([4,4,4]).should == 400
  end

  it "3,3,3 = 300" do
    Greed_RulesEngine.roll([3,3,3]).should == 300
  end

  it "2,2,2 = 200" do
    Greed_RulesEngine.roll([2,2,2]).should == 200
  end

  it "1,1,1,5,1 = 1150" do
    Greed_RulesEngine.roll([1,1,1,5,1]).should == 1150
  end

  it "2,3,4,6,2 = 0" do
    Greed_RulesEngine.roll([2,3,4,6,2]).should == 0
  end

  it "3,4,5,3,3 = 350" do
    Greed_RulesEngine.roll([3,4,5,3,3]).should == 350
  end

  it "1,5,1,2,4 = 250" do
    Greed_RulesEngine.roll([1,5,1,2,4]).should == 250
  end

  it "5,5,5,5,5 = 600" do
    Greed_RulesEngine.roll([5,5,5,5,5]).should == 600
  end
end

