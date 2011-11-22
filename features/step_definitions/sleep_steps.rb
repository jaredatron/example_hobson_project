Then /^this scenario should take (\d+) seconds? to run$/ do |n|
  sleep n.to_f
end
