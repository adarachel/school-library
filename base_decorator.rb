require_relative 'nameable'

class BaseDecorator < Nameable
  def initialize(nameable)
    super() # Call super to initialize the state of the parent class (linter fix)
    @nameable = nameable
  end

  def correct_name
    @nameable.correct_name
  end
end
