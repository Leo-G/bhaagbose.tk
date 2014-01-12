#https://segment.io/leog/bhaagbose.tk/setup/ruby/client
Analytics = AnalyticsRuby            # Alias for convenience
Analytics.init({
    secret: 'g6223m2i29',  # The write key for leog/bhaagbose.tk
    on_error: Proc.new { |status, msg| print msg }  # Optional error handler
})
