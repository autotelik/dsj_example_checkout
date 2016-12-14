class  ShipAddressForm < DatashiftJourney::BaseCollectorForm

  def params_key
    :ship_address
  end

  property :field_value
  # Example basic validation - has field been filled in :
  # validates :field_value, presence: true
end
