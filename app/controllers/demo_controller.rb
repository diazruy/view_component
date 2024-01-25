# frozen_string_literal: true

class DemoController < ApplicationController
  def index
    books = Book.all
    if (sort_by = params[:books_sort_by]).present?
      books = books.order(sort_by)
    end
    characters = Character.all
    if (sort_by = params[:characters_sort_by]).present?
      characters = characters.order(sort_by)
    end
    @pagy_books, @books = pagy(books, page_param: :books_page)
    @pagy_characters, @characters = pagy(characters, page_param: :characters_page)
  end
end
