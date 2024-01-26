# frozen_string_literal: true

class CardComponent < ApplicationComponent
  attr_reader :title

  def initialize(title:)
    @title = title
    super()
  end
end
