# frozen_string_literal: true

class Ruby2htmlRenderer
  def self.render(name:)
    Ruby2html::Render.new(nil) do
      h1 "hello #{name}"

      50.times do
        p "nested hello #{name}"
      end
    end.render
  end
end
