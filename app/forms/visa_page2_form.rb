class  VisaPage2Form < DatashiftJourney::BaseCollectorForm

  def params_key
    :visa_page2
  end

  property :field_value
  # Example basic validation - has field been filled in :
  # validates :field_value, presence: true
end
