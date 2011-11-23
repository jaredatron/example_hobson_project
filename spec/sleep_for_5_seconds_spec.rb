require 'spec_helper'

describe 'sleeping for 5 seconds' do

  it "should take 5 seconds" do
    ExampleHobsonProject.sleep_and_log_for 5
  end

end
