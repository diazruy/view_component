# frozen_string_literal: true

require 'rails_helper'

RSpec.describe CharacterAbilityComponent, type: :component do
  let(:score) { 18 }
  let(:component) do
    described_class.new(
      ability: 'Strength',
      score: score,
      icon: 'dumbbell'
    )
  end
  let!(:rendered) { render_inline(component) }

  it 'renders the icon' do
    expect(page).to have_css('i.fa-dumbbell')
  end

  it 'sets the ability as the title' do
    expect(page).to have_css('div[title="Strength"]')
  end

  it 'sets the first letter of the ability as the text' do
    expect(page).to have_css('div span:first', text: 'S:')
  end

  it 'renders the score' do
    expect(page).to have_css('div span:last-child', text: '18')
  end

  context 'when given an explicit `ability_initial`' do
    let(:component) do
      described_class.new(
        ability: 'Strength',
        score: score,
        icon: 'dumbbell',
        ability_initial: 'F'
      )
    end

    it 'uses the explicit `ability_initial`' do
      expect(page).to have_css('div span:first', text: 'F:')
    end
  end

  context 'when the score is less than 10' do
    let(:score) { 9 }

    it 'renders the score with a leading space' do
      nbsp = "\xC2\xA0"
      expect(page).to have_css('div span:last-child', exact_text: "#{nbsp}9")
    end
  end
end
