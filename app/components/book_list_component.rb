# frozen_string_literal: true

class BookListComponent < PaginatedListCardComponent
  def initialize(books:, pagy:)
    super(collection: books,
          columns: 2,
          item_renderer: BookItemComponent,
          sort_options: sort_options,
          sort_param: :books_sort_by,
          title: 'Books',
          icon: 'book-open-reader',
          pagy: pagy)
  end

  def sort_options
    [
      %w[Title title],
      %w[Author author],
      %w[Genre genre]
    ]
  end
end
