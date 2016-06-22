require 'puppetlabs_spec_helper/module_spec_helper'

module Noop
  def self.puppet_scope
    @scope
  end
  def self.puppet_scope=(value)
    @scope = value
  end
end

# Ask Puppet to save the current scope reference to the task instance
def puppet_resource_scope_override
  Puppet::Parser::Resource.module_eval do
    def initialize(*args)
      raise ArgumentError, "Resources require a hash as last argument" unless args.last.is_a? Hash
      raise ArgumentError, "Resources require a scope" unless args.last[:scope]
      super
      Noop.puppet_scope = scope
      @source ||= scope.source
    end
  end
end

puppet_resource_scope_override
