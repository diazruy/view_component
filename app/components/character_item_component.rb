# frozen_string_literal: true

class CharacterItemComponent < ApplicationComponent
  attr_reader :character

  def initialize(character)
    @character = character
  end
end
