require 'spec_helper'

describe 'sleeping for 6 seconds' do

  it "should take 6 seconds" do
    ExampleHobsonProject.sleep_and_log_for 6
  end

end
