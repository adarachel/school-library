require_relative 'nameable'
require_relative 'book'
require_relative 'rental'

class Person < Nameable
  attr_accessor :name, :rentals

  def initialize(name = 'Unknown', age = nil, parent_permission: true)
    super()
    @name = name
    @age = age
    @parent_permission = parent_permission
    @rentals = []
  end

  def correct_name
    name
  end

  def age
    @age ||= 0
  end

  def parent_permission
    @parent_permission ||= true
  end

  def can_use_services?
    of_age? || @parent_permission
  end

  private

  def of_age?
    age >= 18
  end

  def rent_book(book, date)
    rental = Rental.new(date, book, self)
    @rentals << rental
    book.rentals << rental
  end
end
