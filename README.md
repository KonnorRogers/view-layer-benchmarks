# Purpose

To document performance of ViewComponent, Rails Partials,
Dry-View, Trailblazer Cells, Papercraft and Phlex Components.

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

```
ruby 3.3.5 (2024-09-03 revision ef084cc8f4) +YJIT [arm64-darwin23]
Warming up --------------------------------------
      view_component     1.708k i/100ms
            partials   673.000 i/100ms
   trailblazer_cells   653.000 i/100ms
            dry_view    80.000 i/100ms
               phlex     2.398k i/100ms
          papercraft     2.596k i/100ms
           ruby2html   399.000 i/100ms
Calculating -------------------------------------
      view_component     16.886k (± 1.5%) i/s -    169.092k in  10.016065s
            partials      7.105k (± 2.2%) i/s -     71.338k in  10.045211s
   trailblazer_cells      6.895k (± 2.2%) i/s -     69.218k in  10.044672s
            dry_view    815.198 (± 1.3%) i/s -      8.160k in  10.011743s
               phlex     25.010k (± 2.7%) i/s -    251.790k in  10.075228s
          papercraft     25.500k (± 2.5%) i/s -    257.004k in  10.085609s
           ruby2html      3.899k (± 2.4%) i/s -     39.102k in  10.035682s

Comparison:
          papercraft:    25499.6 i/s
               phlex:    25010.2 i/s - same-ish: difference falls within error
      view_component:    16885.8 i/s - 1.51x  slower
            partials:     7105.3 i/s - 3.59x  slower
   trailblazer_cells:     6894.7 i/s - 3.70x  slower
           ruby2html:     3898.7 i/s - 6.54x  slower
            dry_view:      815.2 i/s - 31.28x  slower
```
