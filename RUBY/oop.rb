class Book
    attr_accessor :title, :author, :pages
    def initialize(title, author, pages)
        @title = title  # refers to the title attribute defined up
        @author = author
        @pages = pages
    end

    def has_honors
        if @pages >= 200
            return true
        else
            return false
        end
    end
end

book1 = Book.new("Harry Potter", "Nives", 300)
puts book1.has_honors

# using an initialize method that gets called everytime an object is created
