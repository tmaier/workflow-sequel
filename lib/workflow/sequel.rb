require 'workflow/sequel/version'
require 'workflow'
require 'workflow/adapter/sequel'
require 'sequel'

module Workflow
  module Sequel
    def self.included(klass)
      return unless Object.const_defined?('Sequel') && klass < ::Sequel::Model

      klass.send :include, Adapter::Sequel
    end
  end
end
