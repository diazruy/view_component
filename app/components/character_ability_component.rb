# frozen_string_literal: true

class CharacterAbilityComponent < ApplicationComponent
  haml_template <<~HAML
    %div{title: ability}
      %i.fa.fa-fw.fa-solid{class: "fa-\#{icon}" }
      = padded_score
  HAML

  attr_reader :ability, :score, :icon, :ability_initial

  def initialize(ability:, score:, icon:, ability_initial: nil)
    @ability = ability
    @score = score
    @icon = icon
    @ability_initial = ability_initial || ability.first
    super()
  end

  def padded_score
    score.to_s.rjust(2, ' ').gsub(' ', '&nbsp;').html_safe
  end
end
