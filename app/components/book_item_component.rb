# frozen_string_literal: true

class BookItemComponent < ApplicationComponent
  attr_reader :book

  def initialize(book)
    @book = book
    super()
  end

  def author
    first_name, last_name = book.author.split
    [last_name, first_name].join(', ')
  end

  def icon
    case book.genre
    when /Science fiction/ then :alien
    when /Fantasy/ then :dragon
    when /Mystery/ then :eye
    when /Romance/ then :heart
    when /Thriller/ then :skull
    when /Biography/ then :user
    when /Legend/ then :scroll
    when /Fairy/ then :'wand-sparkles'
    when /Speech/ then :comment
    else :book
    end
  end
end
