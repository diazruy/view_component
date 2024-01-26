# frozen_string_literal: true

require 'rails_helper'

RSpec.describe CharacterItemComponent, type: :component do
  let(:character) { create :character, first_name: 'Gregor', last_name: 'Clegane' }

  let(:component) do
    described_class.new(character)
  end

  before do
    render_inline(component)
  end

  it 'renders the full name' do
    expect(page).to have_content('Gregor Clegane')
  end

  it 'renders the abilities' do
    expect(component.css('ul li').count).to eq(6)
  end
end
