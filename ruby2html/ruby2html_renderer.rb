# frozen_string_literal: true

class Ruby2htmlRenderer
  def self.render(name:)
    Ruby2html::Render.new(nil) do
      h1 "hello #{name}"
      plain "\n"

      # TODO: This should probably be a component to simulate loading another file.
      50.times do
        plain "\n  "
        p "nested hello #{name}"
        plain "\n"
      end
      plain "\n"
    end.render
  end
end
