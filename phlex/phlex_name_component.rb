# frozen_string_literal: true

class PhlexNameComponent < Phlex::Component
  def initialize(name:)
    super
  end

  def template
    h1 "hello #{@name}"

    50.times do
      render PhlexNestedNameComponent.new(name: @name)
    end
  end
end
