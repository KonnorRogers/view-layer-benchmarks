# frozen_string_literal: true

require_relative '../../patches/dry-configurable'
require 'dry/view'
require_relative '../../patches/dry-view'

module Name
  class View < Dry::View
    config.paths = [File.join(__dir__)]
    config.template = 'view'

    expose :name
  end
end
