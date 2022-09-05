# frozen_string_literal: true

module Name
  class Cell < Cell::ViewModel
    include ::Cell::Erb # or Cell::Hamlit, or Cell::Haml, or Cell::Slim

    property :name

    def show
      render
    end
  end
end
