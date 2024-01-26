# frozen_string_literal: true

class CardComponent < ApplicationComponent
  renders_one :header

  attr_reader :title

  def initialize(title: nil)
    @title = title
    super()
  end
end
