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

**RE-RUN THESE BENCHMARKS** and run them
```
ruby 3.3.4 (2024-07-09 revision be1089c8ec) +YJIT [x86_64-linux]
Warming up --------------------------------------
      view_component   634.000 i/100ms
            partials   313.000 i/100ms
               cells   237.000 i/100ms
         hanami_view   xxxxxxx i/100ms (removed dry-view values)
               phlex   802.000 i/100ms
          papercraft   908.000 i/100ms
           ruby2html   756.000 i/100ms
Calculating -------------------------------------
      view_component      6.014k (± 6.6%) i/s -     60.230k in  10.070424s
            partials      3.027k (± 4.9%) i/s -     30.361k in  10.055928s
               cells      2.279k (± 6.2%) i/s -     22.752k in  10.023571s
         hanami_view      xxxxxx (± x.x%) i/s -      x.xxxk in  10.xxxxxxs (removed dry-view values)
               phlex      8.484k (±12.2%) i/s -     83.408k in  10.026377s
          papercraft      9.617k (± 5.5%) i/s -     96.248k in  10.043388s
           ruby2html      7.945k (± 1.4%) i/s -     80.136k in  10.088139s

Comparison:
          papercraft:     9617.0 i/s
               phlex:     8483.5 i/s - same-ish: difference falls within error
           ruby2html:     7945.2 i/s - 1.21x  slower
      view_component:     6013.8 i/s - 1.60x  slower
            partials:     3027.1 i/s - 3.18x  slower
               cells:     2279.3 i/s - 4.22x  slower
         hanami_view:     xxxx,x i/s - x.xxx  slower (removed dry-view values)
```
