# frozen_string_literal: true

class BookListComponent < PaginatedListCardComponent
  def initialize(books:, pagy:)
    super(
      title: 'Books',
      collection: books,
      columns: 2,
      sort_options: sort_options,
      sort_param: :book_sort_by,
      item_renderer: BookItemComponent,
      pagy: pagy
      )
  end

  def sort_options
    [
      %w[Title title],
      %w[Author author],
      %w[Genre genre]
    ]
  end
end
