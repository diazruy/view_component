# frozen_string_literal: true

class MultiColumnListComponent < ApplicationComponent
  attr_reader :collection, :columns, :item_renderer

  def initialize(collection:, columns:, item_renderer:)
    @collection = collection
    @columns = columns
    @item_renderer = item_renderer
    super()
  end
end
