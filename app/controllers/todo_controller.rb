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