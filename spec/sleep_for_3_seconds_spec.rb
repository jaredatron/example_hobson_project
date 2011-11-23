require 'spec_helper'

describe 'sleeping for 3 seconds' do

  it "should take 3 seconds" do
    ExampleHobsonProject.sleep_and_log_for 3
  end

end
