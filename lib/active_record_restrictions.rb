require 'fig_leaf'

module ActiveRecordRestrictions
  def restrict_access
  end
end

ActiveRecord::Base.extend ActiveRecordRestrictions