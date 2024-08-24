# frozen_string_literal: true

class PhlexNameComponent < Phlex::HTML
  def initialize(name:)
    @name = name
  end

  def view_template
    h1 { "hello #{@name}" }
    plain "\n"

    50.times do
      render PhlexNestedNameComponent.new(name: @name)
    end

    plain "\n"
  end
end
