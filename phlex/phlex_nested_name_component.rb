# frozen_string_literal: true

class PhlexNestedNameComponent < Phlex::HTML
  def initialize(name:)
    @name = name
  end

  def view_template
    plain "\n  "
    p { "nested hello #{@name}" }
    plain "\n"
  end
end
