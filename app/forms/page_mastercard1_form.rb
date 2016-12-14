class  PageMastercard1Form < DatashiftJourney::BaseCollectorForm

  def params_key
    :page_mastercard1
  end

  property :field_value
  # Example basic validation - has field been filled in :
  # validates :field_value, presence: true
end
