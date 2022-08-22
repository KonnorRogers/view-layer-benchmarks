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
      view_component   541.000  i/100ms
            partials   252.000  i/100ms
               cells   355.000  i/100ms
            dry_view    35.000  i/100ms
               phlex     1.240k i/100ms
Calculating -------------------------------------
      view_component      5.370k (± 0.3%) i/s -     54.100k in  10.074019s
            partials      2.515k (± 0.5%) i/s -     25.200k in  10.018925s
               cells      3.540k (± 0.8%) i/s -     35.500k in  10.029694s
            dry_view    348.452  (± 0.6%) i/s -      3.500k in  10.044914s
               phlex     12.279k (± 0.9%) i/s -    124.000k in  10.099450s

Comparison:
               phlex:    12278.8 i/s
      view_component:     5370.3 i/s - 2.29x  (± 0.00) slower
               cells:     3539.7 i/s - 3.47x  (± 0.00) slower
            partials:     2515.3 i/s - 4.88x  (± 0.00) slower
            dry_view:      348.5 i/s - 35.24x  (± 0.00) slower
```
