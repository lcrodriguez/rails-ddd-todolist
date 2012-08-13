class TodoManager
  
  def create todo
    todo = Todo.new(:name => todo[:name])
    todo.save
    todo
  end
  
  def create_item todo_item
    # We can use standard "repository" method, 
    # but when doing something more complex we should create a method on the repository
    todo = Todo.find_by_id(todo_item[:todo_id])
    todo.items << Item.new(:name => todo_item[:name])
    todo.save
    todo
  end
  
  def list
    # In this case, we call a repository method to hide complexity
    Todo.list_home_page
  end
  
end