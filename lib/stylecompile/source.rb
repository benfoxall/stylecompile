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
        parse_source
      end
      
    end
    
    private
    
    def parse_source
      
      base = File.split(@file.path)[0]
      
      @file.each_line do |line|
        
        match = line.match(/@include\s+(\S+)\s*(\/\*.+\*\/)?/)
        
        unless match.nil?
          
          ext = {:target =>File.join(base,  match[1])}
          
          comment = match[2]
          unless comment.nil?
            cmatch = comment.match /\/\* from (\S+)( with (\S+))? \*\//
            unless cmatch.nil?
              ext[:source] = File.join(base, cmatch[1]) unless cmatch[1].nil?
              ext[:with] = cmatch[3]
            end
          end
          
          @externals << ext
          
        end
      end
      
    end
    
  end
end
