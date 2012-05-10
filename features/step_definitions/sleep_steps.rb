Then /^this scenario took (\d+) seconds? to run$/ do |n|
  ExampleHobsonProject.sleep_and_log_for n
end

Then /^this step fails$/ do
  raise "fail"
end

Then /^this step passes$/ do
  true
end
