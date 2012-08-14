require_relative '../spec_helper_nulldb'
require_relative '../../app/services/todo_manager'

describe TodoManager do
  include SpecHelpers

  before do
    setup_nulldb
    @it = TodoManager.new
    @ar = @it
  end

  after do
    teardown_nulldb
  end

  describe "can create todo list" do
    it "for the first time" do
      name = "!@1312312!"

      todo = @it.create(name)

      todo.wont_be_nil
      todo.name.must_equal name
    end

    it "for the first time" do
      work_on_task = Todo.new
      work_on_task.name = "Leo"

      stub(Todo).get("1") { work_on_task }

      todo = @it.create_item({ :todo_id => "1", :name => "Item name" })

      todo.wont_be_nil
      todo.items.size.must_equal 1
      todo.items.first.name.must_equal "Item name"
    end

  end

end
