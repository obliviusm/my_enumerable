require "rspec"
require "./my_enumerable"

class SortedList
    def initialize *args
        @list = args.sort
    end
   
    def each
        if block_given?
            @list.each { |element| yield element } 
        end
    end
end