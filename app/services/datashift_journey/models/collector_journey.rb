DatashiftJourney::Journey::MachineBuilder.create_journey_plan(initial: :ship_address) do

  sequence [:ship_address, :bill_address]

  branch_sequence :visa_sequence, [:visa_page1, :visa_page2]

  branch_sequence :mastercard_sequence, [:page_mastercard1, :page_mastercard2, :page_mastercard3]

  branch_sequence :paypal_sequence, []

  # now define the parent state and the routing criteria to each sequence

  split_on_equality( :payment,
                     "payment_card",    # Helper method on Checkout that returns card type from Payment
                     visa_sequence: 'visa',
                     mastercard_sequence: 'mastercard',
                     paypal_sequence: 'paypal'
  )

  # All branches recombine here at review
  sequence [:review, :complete ]
end

DatashiftJourney.journey_plan_class.class_eval do

  def payment_card
    payment_type = self.node_for_form_and_field('PaymentForm', 'payment')
    return 'visa' unless payment_type

    payment_type.field_value
  end

end