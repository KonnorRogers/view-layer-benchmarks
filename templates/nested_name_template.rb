class NestedNameTemplate < Template
  def initialize(name:)
    @name = name
  end

  def template
    <<~HTML
      <p><%= @name %></p>
    HTML
  end
end
