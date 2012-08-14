require_relative "entity"
require_relative "../repositories/todo_repository"

class Todo < Entity
  
  # We extend from a repository where we will add all methods needed to interact with the DB
  # We only have a get(id) by default on all entities
  # We should not include DB methods directly on the class, just to mantain a clear order and naming for stubbing
  # latter on test and to agree with all the team a single place for DB access
  extend TodoRepository
  
  attr_accessor :name
  
  # Setup AR relationships as usual
  has_many :items

  # Also validations and any other logic
  validates_presence_of :name
end
