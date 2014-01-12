# Load the Rails application.
require File.expand_path('../application', __FILE__)
require 'kaminari'
require 'analytics-ruby'


# Initialize the Rails application.
Bhagbose::Application.initialize!


#https://segment.io/libraries/ruby#getting-started
if defined?(PhusionPassenger)
  PhusionPassenger.on_event(:starting_worker_process) do |forked|
    if forked # We're in smart spawning mode.
      Analytics = AnalyticsRuby          # Alias for convenience
      Analytics.init({
        secret: 'g6223m2i29',  # The secret for leog/bhaagbose.tk
        on_error: Proc.new { |status, msg| print msg }  # Optional error handler
      })
    else
      # We're in direct spawning mode. We don't need to do anything.
           end
          end
        end
