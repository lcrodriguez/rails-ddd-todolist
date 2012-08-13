require_relative 'entity'
require_relative '../repositories/todo'

class Todo < Entity
  extend TodoRepository
  
  has_many :items
end
