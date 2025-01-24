# frozen_string_literal: true

require 'hanami/view'

module Name
  class View < Hanami::View
    config.paths = [File.join(__dir__)]
    config.template = 'view'

    expose :name
  end
end
