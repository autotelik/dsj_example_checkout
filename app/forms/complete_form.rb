class  CompleteForm < DatashiftJourney::BaseCollectorForm

  def params_key
    :complete
  end

  property :field_value
  # Example basic validation - has field been filled in :
  # validates :field_value, presence: true
end
