# frozen_string_literal: true

require 'dry/view'

module Name
  class View < Dry::View
    config.paths = [File.join(__dir__)]
    config.template = 'view'

    expose :name
  end
end
