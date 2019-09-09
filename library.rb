class Library

attr_accessor :books

  def initialize(book_1, book_2)
    @books = book_1, book_2
  end

  def rental_details(book_title)
    for book in @books
      if book[:title] == book_title
        return book[:rental_details]
      end
    end
  end

  def add_book(new_book)
    @books = @books.push new_book
    return @books
  end

  def change_rental_details(title, student_name, date)
    for book in @books
      if book[:title] == title
        book[:rental_details][:student_name] = student_name
        book[:rental_details][:date] = date
        return book[:rental_details]
      end
    end
  end


end
