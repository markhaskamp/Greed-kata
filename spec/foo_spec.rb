require 'rspec'
require File.dirname(__FILE__) + '/../lib/Foo.rb'

describe Foo do

  it "Yo" do
    Foo.new.yo.should eql "yo adrian"
  end

  it "can set and get :a" do
    f = Foo.new
    f.a.should eql nil

    f.a = "eddie would go"
    f.a.should eql "eddie would go"
  end
    
end

