# frozen_string_literal: true

require 'rubygems'
require 'bundler/setup'
Bundler.require(:default)
require 'rack/test'
require 'action_controller/railtie'
require 'benchmark/ips'

# Configure Rails Environment
ENV['RAILS_ENV'] = 'production'


require_relative './components/name_component'
require_relative './components/nested_name_component'

require_relative './cells/name/cell'
require_relative './cells/nested_name/cell'

require_relative './dry-views/name/view'
require_relative './dry-views/nested_name/view'

require_relative './phlex/phlex_name_component'
require_relative './phlex/phlex_nested_name_component'

require_relative './papercraft/pc_test_page'

require_relative './ruby2html/ruby2html_renderer'

module Cell
  class ViewModel
    self.view_paths = ['cells']
  end
end



module Renderers
  class BenchmarksController < ActionController::Base; end

  BenchmarksController.view_paths = %w[./partials ./ruby2html]

  class TestApp < Rails::Application
    config.root = __dir__
    config.hosts << 'example.org'
    config.session_store :cookie_store, key: 'cookie_store_key'
    credentials.secret_key_base = 'secret_key_base'

    config.logger = Logger.new($stdout)
    Rails.logger  = config.logger
  end

  class NameObj
    attr_accessor :name

    def initialize(name)
      @name = name
    end
  end

  def self.view_context
    BenchmarksController.new.view_context
  end

  # A recursive render calls a "name" template 50 times and is fairly simple.
  def self.recursive_renderers
    {
      view_component: proc { view_context.render(NameComponent.new(name: 'Fox Mulder')) },
      partials: proc { view_context.render('/name', name: 'Fox Mulder') },
      trailblazer_cells: proc { view_context.render(html: Name::Cell.new(NameObj.new('Fox Mulder')).().html_safe) },
      dry_view: proc { view_context.render(html: Name::View.new.call(name: 'Fox Mulder').to_s.html_safe) },
      phlex: proc { view_context.render(PhlexNameComponent.new(name: 'Fox Mulder')) },
      papercraft: proc { view_context.render(html: PCTestPage.new.call(name: 'Fox Mulder')).to_s },
      ruby2html: proc { view_context.render(html: Ruby2htmlRenderer.render(name: 'Fox Mulder')) },
    }
  end
end
