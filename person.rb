require_relative 'nameable'

class Person < Nameable
  attr_accessor :name

  def initialize(name = 'Unknown', age = nil, parent_permission: true)
    super()
    @name = name
    @age = age
    @parent_permission = parent_permission
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
end
