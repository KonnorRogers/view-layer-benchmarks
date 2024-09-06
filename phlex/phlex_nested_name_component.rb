# frozen_string_literal: true

class PhlexNestedNameComponent < Phlex::HTML
  def initialize(name:)
    @name = name
  end

  def view_template
    p { "nested hello #{@name}" }
  end
end
