class  PageMastercard2Form < DatashiftJourney::BaseCollectorForm

  def params_key
    :page_mastercard2
  end

  property :field_value
  # Example basic validation - has field been filled in :
  # validates :field_value, presence: true
end
