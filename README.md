# Purpose

To document performance of ViewComponent, Rails Partials,
Hanami View, Trailblazer Cells, Papercraft and Phlex Components.

## Benchmarks

Benchmarks arent representative of real life and just
render nested components / partials. Take all numbers with
a grain of salt.

## Contributing

Feel free to submit a PR for optimization of views and
other use-cases / view layers.

## Setup

```bash
git clone https://github.com/paramagicdev/view-layer-benchmarks.git
cd view-layer-benchmarks
bundle install
bundle exec rake benchmark
```

Benchmarks are for Ruby 3.3.4 and Rails v7.2.

**RE-RUN THESE BENCHMARKS** and run them
```
ruby 3.3.4 (2024-07-09 revision be1089c8ec) [x86_64-linux]
Warming up --------------------------------------
      view_component   349.000 i/100ms
            partials   162.000 i/100ms
   trailblazer_cells   186.000 i/100ms
         hanami_view    65.000 i/100ms
               phlex   530.000 i/100ms
          papercraft   729.000 i/100ms
           ruby2html   476.000 i/100ms
Calculating -------------------------------------
      view_component      3.463k (± 1.0%) i/s -     34.900k in  10.078636s
            partials      1.649k (± 1.5%) i/s -     16.524k in  10.021468s
   trailblazer_cells      1.875k (± 0.9%) i/s -     18.786k in  10.020889s
         hanami_view    658.964 (± 1.1%) i/s -      6.630k in  10.062323s
               phlex      5.341k (± 0.6%) i/s -     53.530k in  10.023603s
          papercraft      7.332k (± 1.4%) i/s -     73.629k in  10.043922s
           ruby2html      4.755k (± 2.1%) i/s -     47.600k in  10.015074s

Comparison:
          papercraft:     7332.1 i/s
               phlex:     5340.6 i/s - 1.37x  slower
           ruby2html:     4755.4 i/s - 1.54x  slower
      view_component:     3463.1 i/s - 2.12x  slower
   trailblazer_cells:     1874.8 i/s - 3.91x  slower
            partials:     1649.3 i/s - 4.45x  slower
         hanami_view:      659.0 i/s - 11.13x  slower
```
