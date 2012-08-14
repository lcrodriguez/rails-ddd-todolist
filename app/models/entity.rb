require 'fig_leaf'
require 'active_record'

class Entity < ActiveRecord::Base  
  self.abstract_class = true
  
  include FigLeaf

  hide ActiveRecord::Base, :ancestors => true,
       :except => [Object, :init_with, :new_record?, :errors,
                   :valid?, :save, :save!, :record_timestamps,
                   :attribute_present?, :marked_for_destruction?,
                   :"[]", :persisted?, :destroyed?, :[]=,
                   :skip_time_zone_conversion_for_attributes]

  hide_singletons ActiveRecord::Calculations,
                  ActiveRecord::FinderMethods,
                  ActiveRecord::Relation,
                  ActiveRecord::QueryMethods,
                  :except => [Class, Object, :primary_key]

  def self.method_missing name, *args
    if name.to_s =~ /^find_by_(.*)$/
      raise NoMethodError.new("#{name}", *args)
    else
      super
    end
  end
  
end
