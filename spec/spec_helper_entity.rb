require "bundler/setup"
require_relative 'spec_helper_lite'

require 'active_model'

# We setup the Entity without ActiveRecord support.
# Entity is not required manually on models.
class Entity
  extend ActiveModel::Naming
  include ActiveModel::Conversion
  include ActiveModel::Validations

  def self.create_method arg
	method_name = (arg.to_s).to_sym

    self.send :define_method, method_name do
      puts arg
    end

    self.send(method_name, [])
  end

  def self.has_many name
  	create_method name
  end

  def self.has_and_belongs_to_many name
  	create_method arg
  end
  
  def self.belongs_to name
  	create_method name
  end
  
end