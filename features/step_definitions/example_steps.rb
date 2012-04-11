Then /^this should take ([\d\.]+) seconds? and (pass|fail)$/ do |seconds, result|
  sleep_and_test seconds.to_f, result
end
