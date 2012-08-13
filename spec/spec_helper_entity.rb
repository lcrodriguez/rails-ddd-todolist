require "bundler/setup"
require_relative 'spec_helper_lite'

require 'active_model'

# We setup the Entity without ActiveRecord support.
# Entity is not required manually on models.
class Entity
  extend ActiveModel::Naming
  include ActiveModel::Conversion
  include ActiveModel::Validations
  
  def self.has_many *params
  end

  def self.has_and_belongs_to_many *params
  end
  
  def self.belongs_to *params
  end
  
end