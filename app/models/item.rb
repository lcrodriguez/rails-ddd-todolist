#require_relative 'entity'

# A item is a part of the Todo List.
# We call Todo an aggregate root, and so, we should not have any way to retrieve items directly
# We will not have access from outside the entity and we should avoid it.
class Item < Entity
  belongs_to :todo
  
  attr_accessor :name
  
  validates_presence_of :name
end
