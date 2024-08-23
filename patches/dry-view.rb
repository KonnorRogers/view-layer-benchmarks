# frozen_string_literal: true

module Dry
  class View
    class Renderer
      def chdir(dirname)
        new_paths = paths.map do |path|
          File.join(path, dirname)
        end

        self.class.new(new_paths, format:, **options)
      end

      def lookup(name, **options)
        paths.each do |path|
          extensions = %w[.html.erb .rb]

          extensions.each do |ext|
            full_path = File.join(path, "#{name}#{ext}")
            return full_path if File.exist?(full_path)
          end
        end
        nil
      end
    end
  end
end
