require_relative 'Person'
class Student < Person
  attr_accessor :classroom

  def initialize(classroom, name, age = 'Unknown', parent_permission: true)
    super(name, age, parent_permission)
    @classroom = classroom
  end

  def play_hooky
    '¯\(ツ)/¯'
  end
end
