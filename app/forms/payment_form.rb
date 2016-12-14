class  PaymentForm < DatashiftJourney::BaseCollectorForm

  def params_key
    :payment
  end

  property :payment_type, virtual: true
  # Example basic validation - has field been filled in :
  # validates :field_value, presence: true
end
