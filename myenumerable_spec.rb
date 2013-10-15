require "rspec"
require "./my_enumerable"

class SortedList
    include MyEnumerable
    attr_reader :list
    
    def initialize *args
        @list = args.sort
    end
   
    def each
        if block_given?
            @list.each { |element| yield element } 
        end
    end
    
    def << arg
        @list.push(arg).sort! 
    end
end

describe "MyEnumerable" do
    subject(:sorted_list) { SortedList.new 5,4,3,2,1 }
    
    context "#map" do
        it { sorted_list.map{|x| x + x }.list.should == [2,4,6,8,10] }
    end
end