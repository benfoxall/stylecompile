require 'lib/stylecompile.rb'

describe Stylecompile::Process do
  
  it 'should cope with non-processing externals' do
    Stylecompile::Process.new({:target => 'out.css'})
  end
  
end
