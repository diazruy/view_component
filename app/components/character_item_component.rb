# frozen_string_literal: true

class CharacterItemComponent < ApplicationComponent
  attr_reader :character

  def initialize(character)
    @character = character
    super()
  end

  def full_name
    [character.first_name, character.last_name].join(' ')
  end
end
