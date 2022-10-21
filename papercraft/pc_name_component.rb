require_relative 'pc_nested_name_component'

PCNameComponent = ->(name) {
  h1 "hello #{name}"

  50.times {
    PCNestedNameComponent(name)
  }
}
