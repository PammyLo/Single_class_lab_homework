require('minitest/autorun')
require('minitest/rg')
require_relative('../library')

class TestLibrary < MiniTest::Test

  def setup
    @local_library = Library.new(
      {
      title: "lord_of_the_rings",
      rental_details: {
       student_name: "Jeff",
       date: "01/12/16"
      }
    },
    {
        title: "harry_potter",
        rental_details: {
         student_name: "Vicky",
         date: "01/12/19"
        }
      }
  )
  end

  def test_books
    assert_equal([{
      title: "lord_of_the_rings",
      rental_details: {
       student_name: "Jeff",
       date: "01/12/16"
      }
    },
    {
        title: "harry_potter",
        rental_details: {
         student_name: "Vicky",
         date: "01/12/19"
        }
      }], @local_library.books)
  end

  def test_rental_details
    rental = @local_library.rental_details("harry_potter")
    assert_equal({
     student_name: "Vicky",
     date: "01/12/19"
    }, rental)
  end

  def test_add_book
    new_book = @local_library.add_book({
        title: "mary_poppins",
        rental_details: {
         student_name: "",
         date: ""
        }
      })
    assert_equal([{
      title: "lord_of_the_rings",
      rental_details: {
       student_name: "Jeff",
       date: "01/12/16"
      }
    },
    {
        title: "harry_potter",
        rental_details: {
         student_name: "Vicky",
         date: "01/12/19"
        }
      },
      {
          title: "mary_poppins",
          rental_details: {
           student_name: "",
           date: ""
          }
        }
      ], @local_library.books)
  end

  def test_change_rental_details
    updated_rental_details = @local_library.change_rental_details("harry_potter", "Ashley", "09-09-2019")
    assert_equal({
         student_name: "Ashley",
         date: "09-09-2019"
      }, updated_rental_details)
  end

end
