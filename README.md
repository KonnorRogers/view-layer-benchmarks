# Purpose

To document performance of ViewComponent, Rails Partials,
Dry-View, and Trailblazer Cells

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

![Picture of View Layer benchmarks. Order of speed: ViewComponent,Trailblazer Cells, Rails Partials, Dry-View](/assets/benchmark.png)
