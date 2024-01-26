# frozen_string_literal: true

class CharacterAbilityComponent < ApplicationComponent
  attr_reader :ability, :score, :icon, :ability_initial

  def initialize(ability:, score:, icon:, ability_initial: nil)
    @ability = ability
    @score = score
    @icon = icon
    @ability_initial = ability_initial || ability.first
  end

  def fa_icon
    "fa-#{icon}"
  end

  def padded_score
    score.to_s.rjust(2, ' ').gsub(' ', '&nbsp;')
  end
end
