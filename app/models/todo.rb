class Todo < Entity
  extend TodoRepository
  
  has_many :items
end
