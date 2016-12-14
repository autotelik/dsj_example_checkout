Rails.application.routes.draw do

# This line mounts Datashift Journey's routes at the root of your application.
# If you would like to change where this engine is mounted, simply change the :at option to something different.
#
mount DatashiftJourney::Engine => "/"

root to: "datashift_journey/journey_plans#new"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
