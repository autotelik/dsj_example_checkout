# README

An example checkout built using datashift journey engine

Demonstrates how to quickly build a question-answer flow using the engine in a real Rails APP

### Steps
 
Add `gem 'datashift_journey', git: 'https://github.com/autotelik/datashift_journey'` to bundle

Run `rails generate datashift_journey:install_collector`

Define the journey - configure the required pages for this flow, 
by editing `app/services/datashift_journey/models/collector_journey.rb`

Create the helper methods used where the journey splits

Generate the associated Forms and Views

```ruby

rails generate datashift_journey:forms

rails generate datashift_journey:views
```


Edit the views with non trivial requirements such as adding Radio Buttons for the Payment Page

Run server and test in Browser

