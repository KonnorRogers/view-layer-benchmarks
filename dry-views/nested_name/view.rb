require "dry/view"

module NestedName
  class View < Dry::View
    config.paths = [File.join(__dir__)]
    config.template = "view"

    expose :name
  end
end
