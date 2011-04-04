module Stylecompile
  class Source
    
    attr_accessor :errors, :externals
    
    def initialize file
      
      @errors, @externals = [], []
      
      begin
        @file = File.open file, 'r'
      rescue
        @errors << 'failed to initialize'
      else
        parse_externals
      end
      
    end
    
    private
    
    def parse_externals
      
      @file.each_line do |line|
        match = line.match /@include (.+)/
        if match
          @externals << match[1]
        end
      end
      
    end
    
  end
end
