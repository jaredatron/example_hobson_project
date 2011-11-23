require 'spec_helper'

describe 'a' do

  it "should take 1 second to run this spec" do
    ExampleHobsonProject.sleep_and_log_for 1
  end

end
