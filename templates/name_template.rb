class NameTemplate < Template
  def initialize(name:)
    @name = name
  end

  def template
    <<~HTML
      <p><%= @name %></p>

      <% template = NestedNameTemplate.new(name: @name) %>
      <% 50.times do %>
        <%= template.render %>
      <% end %>
    HTML
  end
end
