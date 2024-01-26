# frozen_string_literal: true

require 'rails_helper'

RSpec.describe CharacterItemComponent, type: :component do
  let(:character) { build :character }

  before do
    render_inline(described_class.new(character))
  end

  it 'renders the character name' do
    expect(page).to have_content("#{character.last_name}, #{character.first_name}")
  end

  it 'renders the abilities' do
    expect(page).to have_css('ul li', count: 6)
  end
end
