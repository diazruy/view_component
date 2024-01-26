# frozen_string_literal: true

class SorterComponent < ApplicationComponent
  attr_reader :options, :param_name

  def initialize(options:, param_name:)
    @options = options
    @param_name = param_name
    super()
  end
end
