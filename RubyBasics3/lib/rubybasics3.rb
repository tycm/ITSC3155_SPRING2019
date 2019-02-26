# Ruby Basics Part 3

class BookInStock
# YOUR CODE HERE
    def initialize(isbn, price)
        @isbn = isbn
        @price = price
        raise ArgumentError, 'ISBN must be populated' unless !isbn.to_s.strip.empty?
        raise ArgumentError, 'Price must not be 0 or negative' unless price > 0
    end
    attr_accessor :isbn
    attr_accessor :price
    
    def price_as_string
        return '$%.2f' % @price
    end
end