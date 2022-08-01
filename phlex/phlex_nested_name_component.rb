class PhlexNestedNameComponent < Phlex::Component
  def initialize(name:)
    super
  end

  def template
    p "nested hello #{@name}"
  end
end
