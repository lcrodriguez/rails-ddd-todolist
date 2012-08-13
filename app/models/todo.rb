require_relative 'entity'
require_relative '../repositories/todo_repository'

class Todo < Entity
  extend TodoRepository
  
  has_many :items
  
  validates_presence_of :name
end
