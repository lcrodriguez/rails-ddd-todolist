require_relative "../models/todo"
require_relative "../models/item"

# TodoController
# ====================
# The controller are indeed very simple and I believe the testing effor makes no sense at all for now.
# We avoid having any logic on the controller and this way we assure we can isolated tests the manager.
#
class TodoController < ApplicationController
  before_filter :initialize
  
  def create
    todo = @manager.create(params)
    render :json => todo
  end
  
  def add_item
    todo = @manager.create_item(params)
    render :json => todo
  end

  def list
    render :json => @manager.list
  end
  
private
  
  def initialize
    @manager = TodoManager.new
  end
end