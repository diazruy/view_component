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

  def abilities
    [
      { ability: 'Strength', score: character.strength, icon: 'dumbbell' },
      { ability: 'Dexterity', score: character.dexterity, icon: 'person-running' },
      { ability: 'Constitution', score: character.constitution, icon: 'heart' },
      { ability: 'Intelligence', score: character.intelligence, icon: 'brain' },
      { ability: 'Wisdom', score: character.wisdom, icon: 'book-journal-whills' },
      { ability: 'Charisma', score: character.charisma, icon: 'user-group', ability_initial: 'K' }
    ]
  end
end
