require_relative '../spec_helper_nulldb'
require_relative '../../app/models/todo'

describe Todo do
  include SpecHelpers
  
  before do
    setup_nulldb
    
    @it = Todo.new
    @ar = @it
    @ar_class = Todo
  end

  after do
    teardown_nulldb
  end
  
  it "has no name" do
    @it.name.must_be_nil
  end

end
