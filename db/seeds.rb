# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

module DatashiftJourney

  ship_address_page = Collector::PageState.create(form_name: 'ShipAddress')

  ship_name_field = Collector::FormField.create(
      page_state: ship_address_page,
      field: :name,
      field_type: :string
  )

  ship_address_field = Collector::FormField.create(
      page_state: ship_address_page,
      field: :address,
      field_type: :string
  )

  ship_address_country_field = Collector::FormField.create(
      page_state: ship_address_page,
      field: :address_country,
      field_type: :string
  )

  ship_email_field = Collector::FormField.create(
      page_state: ship_address_page,
      field: :email,
      field_type: :string
  )

  Collector::FieldSnippet.create(
      form_field: ship_name_field,
      snippet: Collector::Snippet.create(I18n_key: :enter_your_name)
  )

  Collector::FieldSnippet.create(
      form_field: ship_address_field,
      snippet: Collector::Snippet.create(raw_text: "Enter your Name")
  )

end