require 'spec_helper'

describe 'd' do

  it "should take 4 seconds to run this spec" do
    ExampleHobsonProject.sleep_and_log_for 4
  end

end
