require 'papercraft'
require_relative 'pc_name_component'

class PCTestPage
  def call(name:)
    page = Papercraft.html { |some_name|
      PCNameComponent(some_name)
    }
    page.render(name)
  end
end
