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

Benchmarks are for Ruby 3.4.1 and Rails v8.0.

**RE-RUN THESE BENCHMARKS** and run them
```
ruby 3.4.1 (2024-12-25 revision 48d4efcb85) +YJIT +PRISM [arm64-darwin24]
Warming up --------------------------------------
      view_component     1.872k i/100ms
            partials     1.527k i/100ms
   trailblazer_cells   566.000 i/100ms
         hanami_view   231.000 i/100ms
               phlex     2.059k i/100ms
          papercraft     2.814k i/100ms
           ruby2html     2.488k i/100ms
Calculating -------------------------------------
      view_component     18.445k (± 0.3%) i/s   (54.21 μs/i) -    185.328k in  10.047597s
            partials     14.946k (± 0.6%) i/s   (66.91 μs/i) -    149.646k in  10.012969s
   trailblazer_cells      5.597k (± 1.0%) i/s  (178.67 μs/i) -     56.034k in  10.012828s
         hanami_view      2.325k (± 0.4%) i/s  (430.12 μs/i) -     23.331k in  10.035342s
               phlex     20.551k (± 0.3%) i/s   (48.66 μs/i) -    205.900k in  10.018915s
          papercraft     28.002k (± 0.4%) i/s   (35.71 μs/i) -    281.400k in  10.049340s
           ruby2html     24.851k (± 0.3%) i/s   (40.24 μs/i) -    248.800k in  10.011760s

Comparison:
          papercraft:    28002.4 i/s
           ruby2html:    24850.9 i/s - 1.13x  slower
               phlex:    20551.4 i/s - 1.36x  slower
      view_component:    18445.2 i/s - 1.52x  slower
            partials:    14945.7 i/s - 1.87x  slower
   trailblazer_cells:     5596.8 i/s - 5.00x  slower
         hanami_view:     2324.9 i/s - 12.04x  slower
```
