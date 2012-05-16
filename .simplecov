SimpleCov.command_name "#{$0} #{Time.now.to_i}"
SimpleCov.start do
  load_adapter 'test_frameworks'
  add_filter '/config/'
  add_group 'Project', 'lib'
end
