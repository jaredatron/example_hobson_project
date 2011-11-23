require 'spec_helper'

describe 'c' do

  it "should take 3 seconds to run this spec" do
    ExampleHobsonProject.sleep_and_log_for 3
  end

end
