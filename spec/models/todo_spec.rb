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
  
  describe "before save" do
    it "is invalid" do
      @it.valid?.must_equal false
    end
  end

end
