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
RAILS_ENV=production bundle exec rake benchmark
```

Benchmarks are for Ruby 3.3.5 and Rails v8.0.

**RE-RUN THESE BENCHMARKS** and run them
```
ruby 3.3.5 (2024-09-03 revision ef084cc8f4) +YJIT [arm64-darwin23]
Warming up --------------------------------------
      view_component     1.489k i/100ms
            partials     1.481k i/100ms
   trailblazer_cells   516.000 i/100ms
         hanami_view   208.000 i/100ms
               phlex     1.533k i/100ms
          papercraft     1.968k i/100ms
           ruby2html     1.951k i/100ms
Calculating -------------------------------------
      view_component     14.282k (± 0.9%) i/s   (70.02 μs/i) -    142.944k in  10.009700s
            partials     14.549k (± 0.8%) i/s   (68.74 μs/i) -    146.619k in  10.078579s
   trailblazer_cells      4.913k (± 4.6%) i/s  (203.55 μs/i) -     49.536k in  10.104645s
         hanami_view      2.055k (± 4.3%) i/s  (486.73 μs/i) -     20.592k in  10.041693s
               phlex     14.947k (± 0.6%) i/s   (66.90 μs/i) -    150.234k in  10.051647s
          papercraft     19.337k (± 0.4%) i/s   (51.71 μs/i) -    194.832k in  10.075517s
           ruby2html     18.885k (± 0.2%) i/s   (52.95 μs/i) -    189.247k in  10.021296s

Comparison:
          papercraft:    19337.4 i/s
           ruby2html:    18884.6 i/s - 1.02x  slower
               phlex:    14946.8 i/s - 1.29x  slower
            partials:    14548.6 i/s - 1.33x  slower
      view_component:    14281.6 i/s - 1.35x  slower
   trailblazer_cells:     4912.8 i/s - 3.94x  slower
         hanami_view:     2054.5 i/s - 9.41x  slower
```
