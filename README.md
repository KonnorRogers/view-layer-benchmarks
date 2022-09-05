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
      view_component   532.000  i/100ms
            partials   254.000  i/100ms
               cells   357.000  i/100ms
            dry_view    35.000  i/100ms
               phlex     2.724k i/100ms
Calculating -------------------------------------
      view_component      5.325k (± 0.3%) i/s -     53.732k in  10.091000s
            partials      2.534k (± 0.4%) i/s -     25.400k in  10.022917s
               cells      3.521k (± 0.7%) i/s -     35.343k in  10.037917s
            dry_view    351.599  (± 0.6%) i/s -      3.535k in  10.054505s
               phlex     27.062k (± 1.2%) i/s -    272.400k in  10.067337s

Comparison:
               phlex:    27061.7 i/s
      view_component:     5324.8 i/s - 5.08x  (± 0.00) slower
               cells:     3521.1 i/s - 7.69x  (± 0.00) slower
            partials:     2534.2 i/s - 10.68x  (± 0.00) slower
            dry_view:      351.6 i/s - 76.97x  (± 0.00) slower
```
