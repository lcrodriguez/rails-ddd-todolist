require_relative '../spec_helper_entity'
require_relative '../../app/models/todo'

describe Todo do

  before do
    @it = Todo.new
    @ar = @it
  end

  after do
  end
  
  describe "before save" do
    it "is invalid" do
      @it.valid?.must_equal false
    end
  end

end
