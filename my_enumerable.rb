module MyEnumerable
    def map 
        new_list = self.class.new
        self.each { |x| new_list << (yield x) } if block_given? 
        new_list
    end
end