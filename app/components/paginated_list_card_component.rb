# frozen_string_literal: true

class PaginatedListCardComponent < ApplicationComponent
  use_helpers :pagy_bootstrap_nav

  attr_reader :title, :collection, :columns, :sort_options, :sort_param, :item_renderer, :pagy

  def initialize(title:, collection:, columns:, sort_options:, sort_param:, item_renderer:, pagy:)
    @title = title
    @collection = collection
    @columns = columns
    @sort_options = sort_options
    @sort_param = sort_param
    @item_renderer = item_renderer
    @pagy = pagy
    super()
  end
end
