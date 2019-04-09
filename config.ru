require 'rack'
body = "#{ENV['HOSTNAME']}   #{ENV['MESSAGE']}"
run Proc.new { |env| ['200', {'Content-Type' => 'text/plain'}, [body]] }
