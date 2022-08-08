#!/usr/bin/env ruby
# frozen_string_literal: true
require 'rubygems'
require 'bundler/setup'
Bundler.require(:default)
require "rack/test"
require "action_controller/railtie"
require "benchmark/ips"

# Configure Rails Environment
ENV["RAILS_ENV"] = "production"


class TestApp < Rails::Application
  config.root = __dir__
  config.hosts << "example.org"
  config.session_store :cookie_store, key: "cookie_store_key"
  secrets.secret_key_base = "secret_key_base"

  config.logger = Logger.new($stdout)
  Rails.logger  = config.logger
end

class Cell::ViewModel
  self.view_paths = ["cells"]
end

require_relative "./components/name_component"
require_relative "./components/nested_name_component"

require_relative "./cells/name/cell"
require_relative "./cells/nested_name/cell"

require_relative "./dry-views/name/view"
require_relative "./dry-views/nested_name/view"

require_relative "./phlex/phlex_name_component"
require_relative "./phlex/phlex_nested_name_component"

class BenchmarksController < ActionController::Base
end

BenchmarksController.view_paths = ["./partials"]
controller_view = BenchmarksController.new.view_context

class NameObj
  attr_accessor :name

  def initialize(name)
    @name = name
  end
end

Benchmark.ips do |x|
  x.time = 10
  x.warmup = 2

  x.report("view_component") { controller_view.render(NameComponent.new(name: "Fox Mulder")) }
  x.report("partials") { controller_view.render("/name", name: "Fox Mulder") }
  x.report("cells") { controller_view.render(html: Name::Cell.new(NameObj.new("Fox Mulder")).()) }
  x.report("dry_view") { controller_view.render(html: Name::View.new.call(name: "Fox Mulder").to_s)  }
  x.report("phlex") { controller_view.render(html: PhlexNameComponent.new(name: "Fox Mulder").call.html_safe) }

  x.compare!
end
