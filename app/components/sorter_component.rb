# frozen_string_literal: true

class SorterComponent < ApplicationComponent
  def initialize(options:, param_name:)
    @options = options
    @param_name = param_name
  end

end
