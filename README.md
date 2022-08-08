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

Benchmarks are for Ruby 3.1.1 and Rails v7.

```console
Warming up --------------------------------------
      view_component   546.000  i/100ms
            partials   253.000  i/100ms
               cells   361.000  i/100ms
            dry_view    35.000  i/100ms
               phlex   553.000  i/100ms
Calculating -------------------------------------
      view_component      5.357k (± 0.2%) i/s -     54.054k in  10.090963s
            partials      2.516k (± 0.2%) i/s -     25.300k in  10.055975s
               cells      3.591k (± 0.4%) i/s -     36.100k in  10.053096s
            dry_view    356.053  (± 0.6%) i/s -      3.570k in  10.026793s
               phlex      5.475k (± 0.8%) i/s -     55.300k in  10.100898s

Comparison:
               phlex:     5475.1 i/s
      view_component:     5356.7 i/s - 1.02x  (± 0.00) slower
               cells:     3591.0 i/s - 1.52x  (± 0.00) slower
            partials:     2515.9 i/s - 2.18x  (± 0.00) slower
            dry_view:      356.1 i/s - 15.38x  (± 0.00) slower
```
