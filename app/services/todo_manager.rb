require_relative "../models/todo"
require_relative "../models/item"

# TodoManager service
# ===================
#
# We delegate on a service the full responsabily of the task.
# We avoid having any logic on the controller and assure we can isolated tests the manager.
# We prefer to avoid class methods and force to instantiate the object as we could inject some other service needed.
#
class TodoManager
  
  def create params
    todo = Todo.new
    todo.name = params[:name]
    todo.save
    todo
  end
  
  def create_item todo_item
    todo = Todo.get(todo_item[:todo_id])

    item = Item.new
    item.name = todo_item[:name]

    todo.items << item
    todo.save
    todo
  end
  
  def list
    # In this case, we call a repository method to hide complexity
    Todo.list_home_page
  end
  
end