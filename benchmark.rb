# frozen_string_literal: true

require "./renderers.rb"

Benchmark.ips do |x|
  x.time = 10
  x.warmup = 10


  Renderers.recursive_renderers.each do |renderer, render_function|
    x.report(renderer.to_s) { render_function.call() }
  end

  x.compare!
end
