# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

module DatashiftJourney

  ship_address_form = Models::Form.create(form_name: 'ShipAddress')

  ship_name_field = Models::FormField.create(
      form: ship_address_form,
      field: :name,
      field_type: :string
  )

  Models::FieldSnippet.create(
      form_field: ship_name_field,
      snippet: Models::Snippet.create(I18n_key: :enter_your_name)
  )

  ship_address_field = Models::FormField.create(
      form: ship_address_form,
      field: :address,
      field_type: :string
  )

  Models::FieldSnippet.create(
      form_field: ship_address_field,
      snippet: Models::Snippet.create(raw_text: "Enter your Name")
  )

end