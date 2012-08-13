require_relative 'entity'

class Item < Entity
  belongs_to :todo
end
