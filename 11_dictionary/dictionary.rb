class Dictionary
	attr_accessor :entries 
    
    def initialize
        @entries={} #initialize entries as empty hash
    end
    
    def keywords
    	@entries.keys.sort! #sorts hash in place
    end
    
    def add(options)
        if options.is_a?(String) # if input is a string and not a hash, add option as key to has with empty value
            @entries[options]=nil
        else
            options.each do |key,value| #else (assuming entry will be hash), add key and value as entry to hash
            @entries[key]=value
        end
        end
    end



    def find(entry)
      @entries.select {|k,v| k =~ (/#{entry}|#{entry}[0..1]/)} #find entries by full word or prefix
  	end
    
    def include?(entry) 
    	if @entries.include?(entry)
    		return true
    	else return false
    	end
    end
    
   def printable
   	arr = [] #create array for storage
   	@entries.each {|k,v|  arr << "[#{k}] \"#{v}\"\n"} #for each entry, add the key and value to array on a new line
   	arr.reverse.join.chomp #print joined array
    end
   
end