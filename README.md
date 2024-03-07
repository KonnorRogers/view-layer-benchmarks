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

Benchmarks are for Ruby 3.2.2 and Rails v7.1.

```
Warming up --------------------------------------
      view_component   906.000  i/100ms
            partials   446.000  i/100ms
               cells   498.000  i/100ms
            dry_view    46.000  i/100ms
               phlex     3.028k i/100ms
          papercraft     1.730k i/100ms
Calculating -------------------------------------
      view_component      8.969k (± 0.6%) i/s -     89.694k in  10.000780s
            partials      4.347k (± 2.0%) i/s -     43.708k in  10.058462s
               cells      4.699k (± 3.1%) i/s -     47.310k in  10.078038s
            dry_view    441.518  (± 2.3%) i/s -      4.416k in  10.007041s
               phlex     28.745k (± 1.1%) i/s -    287.660k in  10.008481s
          papercraft     16.392k (± 2.1%) i/s -    164.350k in  10.030574s

Comparison:
               phlex:    28745.1 i/s
          papercraft:    16392.3 i/s - 1.75x  (± 0.00) slower
      view_component:     8969.1 i/s - 3.20x  (± 0.00) slower
               cells:     4699.0 i/s - 6.12x  (± 0.00) slower
            partials:     4347.2 i/s - 6.61x  (± 0.00) slower
            dry_view:      441.5 i/s - 65.11x  (± 0.00) slower```
