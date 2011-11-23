require 'spec_helper'

describe 'b' do

  it "should take 2 seconds to run this spec" do
    ExampleHobsonProject.sleep_and_log_for 2
  end

end
