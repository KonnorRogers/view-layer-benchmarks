# frozen_string_literal: true

require 'dry-configurable'

module Dry
  module Configurable
    class DSL
      alias_method :default_setting, :setting

      def setting(name, default_value = nil, **options, &block)
        default_setting(name, default: default_value, **options, &block)
      end
    end
  end
end
