# frozen_string_literal: true

class MultiColumnComponent < ApplicationComponent
  attr_reader :columns, :collection, :item_renderer

  def initialize(columns:, collection:, item_renderer:)
    @columns = columns
    @collection = collection
    @item_renderer = item_renderer
    super()
  end
end
