require 'spec_helper'
require 'yaml'

describe 'base_task::base' do
  it { is_expected.to compile.with_all_deps }

  it 'prepares base variables for the Noop tests' do
    scope = Noop.puppet_scope.class_scope 'base_task::base'
    fail 'no scope!' unless scope
    data = scope.to_hash(false)
    puts YAML.dump data
  end
end
