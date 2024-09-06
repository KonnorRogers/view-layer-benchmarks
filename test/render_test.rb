# frozen_string_literal: true

require 'minitest'
require 'minitest/autorun'

require_relative '../renderers.rb'

class RenderTest < Minitest::Test
  def test_that_all_benchmarks_render_the_same
    html = File.read(File.expand_path('../name.html', __dir__)).gsub(/\n/, '')

    ::Renderers.recursive_renderers.each do |library, render_function|
      rendered_html = render_function.call().gsub(/\n/, '')

      next if library == :papercraft

      assert_equal(html, rendered_html, "#{library} failed to match the expected HTML.")
    end
  end
end
