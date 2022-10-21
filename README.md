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

Benchmarks are for Ruby 3.1.2 and Rails v7.

```
Warming up --------------------------------------

      view_component   177.000  i/100ms
            partials    78.000  i/100ms
               cells    99.000  i/100ms
            dry_view    11.000  i/100ms
               phlex   915.000  i/100ms
          papercraft   494.000  i/100ms

Calculating -------------------------------------

      view_component      1.709k (± 3.6%) i/s -     17.169k in  10.062967s
            partials    787.452  (± 4.2%) i/s -      7.878k in  10.022594s
               cells      1.005k (± 4.4%) i/s -     10.098k in  10.070859s
            dry_view    112.266  (± 2.7%) i/s -      1.122k in  10.004243s
               phlex      9.511k (± 3.7%) i/s -     95.160k in  10.020648s
          papercraft      4.894k (± 3.6%) i/s -     48.906k in  10.007164s

Comparison:
               phlex:     9510.9 i/s
          papercraft:     4893.7 i/s - 1.94x  (± 0.00) slower
      view_component:     1708.6 i/s - 5.57x  (± 0.00) slower
               cells:     1004.7 i/s - 9.47x  (± 0.00) slower
            partials:      787.5 i/s - 12.08x  (± 0.00) slower
            dry_view:      112.3 i/s - 84.72x  (± 0.00) slower
```
