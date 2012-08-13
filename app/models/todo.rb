require 'active_record'

class Todo < ActiveRecord::Base
  include FigLeaf
  
  hide ActiveRecord::Base, ancestors: true,
       except: [Object, :init_with, :new_record?, 
                :errors, :valid?, :save]
                
  hide_singletons ActiveRecord::Calculations, 
                  ActiveRecord::FinderMethods,
                  ActiveRecord::Relation
  
  extend TodoRepository
  
  has_many :items
end
