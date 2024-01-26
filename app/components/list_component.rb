# frozen_string_literal: true

class ListComponent < ApplicationComponent
  renders_many :items

  haml_template <<~HAML
    %ul
      - items.each do |item|
        %li= item
  HAML
end
