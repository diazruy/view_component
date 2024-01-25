# frozen_string_literal: true

class CharacterListComponent < PaginatedListCardComponent
  def initialize(characters:, pagy:)
    super(
      title: 'Characters',
      collection: characters,
      columns: 4,
      sort_options: sort_options,
      sort_param: :characters_sort_by,
      item_renderer: CharacterItemComponent,
      pagy: pagy
      )
  end

  def sort_options
    [
      ['First Name', 'first_name'],
      ['Last Name', 'last_name'],
      ['Race', 'race'],
      ['Class', 'klass']
    ]
  end
end
