# frozen_string_literal: true

class CharacterListComponent < PaginatedListCardComponent
  def initialize(characters:, pagy:)
    super(collection: characters,
          columns: 4,
          item_renderer: CharacterItemComponent,
          sort_options: sort_options,
          sort_param: :characters_sort_by,
          title: 'Characters',
          icon: 'people-group',
          pagy: pagy)
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
