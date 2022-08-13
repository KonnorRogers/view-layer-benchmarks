# Purpose

To document performance of ViewComponent, Rails Partials,
Dry-View, Trailblazer Cells, and Phlex Components.

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

Benchmarks are for Ruby 3.1.2 and Rails v7.

```
Warming up --------------------------------------
      view_component   542.000  i/100ms
            partials   253.000  i/100ms
               cells   356.000  i/100ms
            dry_view    32.000  i/100ms
               phlex     1.098k i/100ms
Calculating -------------------------------------
      view_component      5.395k (± 1.3%) i/s -     54.200k in  10.048373s
            partials      2.519k (± 0.7%) i/s -     25.300k in  10.045328s
               cells      3.563k (± 0.5%) i/s -     35.956k in  10.092175s
            dry_view    346.863  (± 0.9%) i/s -      3.488k in  10.056850s
               phlex     10.854k (± 0.7%) i/s -    108.702k in  10.015048s

Comparison:
               phlex:    10854.4 i/s
      view_component:     5394.9 i/s - 2.01x  (± 0.00) slower
               cells:     3562.8 i/s - 3.05x  (± 0.00) slower
            partials:     2518.7 i/s - 4.31x  (± 0.00) slower
            dry_view:      346.9 i/s - 31.29x  (± 0.00) slower
```
