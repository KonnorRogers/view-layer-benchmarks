class PhlexNameComponent < Phlex::Component
  def initialize(name:)
    super
  end

  def template
    h1 "hello #{@name}"

    50.times do
      component PhlexNestedNameComponent, name: @name
    end
  end
end
