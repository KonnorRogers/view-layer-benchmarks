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
      view_component   526.000  i/100ms
            partials   240.000  i/100ms
               cells   349.000  i/100ms
            dry_view    34.000  i/100ms
               phlex   703.000  i/100ms
Calculating -------------------------------------
      view_component      5.246k (± 0.7%) i/s -     52.600k in  10.027410s
            partials      2.407k (± 0.3%) i/s -     24.240k in  10.070509s
               cells      3.431k (± 0.4%) i/s -     34.551k in  10.069526s
            dry_view    340.897  (± 0.3%) i/s -      3.434k in  10.073467s
               phlex      6.943k (± 0.2%) i/s -     69.597k in  10.024142s

Comparison:
               phlex:     6943.0 i/s
      view_component:     5245.9 i/s - 1.32x  (± 0.00) slower
               cells:     3431.3 i/s - 2.02x  (± 0.00) slower
            partials:     2407.0 i/s - 2.88x  (± 0.00) slower
            dry_view:      340.9 i/s - 20.37x  (± 0.00) slower
```
