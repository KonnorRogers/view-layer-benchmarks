# frozen_string_literal: true

module Ruby2html
  class NameComponent < ViewComponent::Base
    include Ruby2html::ComponentHelper

    def initialize(name:)
      @name = name
    end

    def call
      html do
        h1 "hello #{@name}"

        50.times do
          render NestedNameComponent.new(name: @name)
        end
      end
    end
  end

  class NestedNameComponent < ViewComponent::Base
    include Ruby2html::ComponentHelper

    def initialize(name:)
      @name = name
    end

    def call
      html do
        p "nested hello #{@name}"
      end
    end
  end
end
