require "simple_default_values/version"
require 'active_record'

module SimpleDefaultValues
  def has_default_values(default_values = {})
 
    class_attribute :default_values
    self.default_values = default_values
 
    after_initialize :assign_default_values
 
    include InstanceMethods
  end
 
  module InstanceMethods
    private
 
    def assign_default_values
      return unless new_record?
      default_values.each do |key, value|
        self[key] = value if self[key].nil?
      end
    end
  end
end

ActiveRecord::Base.extend SimpleDefaultValues
