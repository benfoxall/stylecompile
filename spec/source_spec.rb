require 'lib/stylecompile.rb'

describe Stylecompile::Source, "#nonfile" do
  
  it "should give an error for non existant files" do
    sc = Stylecompile::Source.new 'nonfile.css'
    sc.errors.size.should > 0
  end
  
end

describe Stylecompile::Source, "#one" do
  
  before do
    @sc = Stylecompile::Source.new 'spec/assets/one.css'
  end
  
  it "should load without errors" do
    @sc.errors.size.should == 0
  end
  
  it "should detect the externals" do
    @sc.externals.size.should > 0
  end
  
end