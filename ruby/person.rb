class Person
  attr_accessor :name, :age, :parent_permission
  attr_reader :id

  def initialize(name, age = 'Unknown', parent_permission: true)
    @id = Random.rand(1..1000)
    @name = name
    @age = age
    @parent_permission = parent_permission
  end

  def of_age?
    @age >= 18
  end

  def can_use_services?
    of_age? || parent_permission
  end
end