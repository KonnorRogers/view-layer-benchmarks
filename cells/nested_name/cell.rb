module NestedName
  class Cell < Cell::ViewModel
    include ::Cell::Erb

    property :name

    def show
      render
    end
  end
end
