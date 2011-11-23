require 'spec_helper'

describe 'sleeping for 2 seconds' do

  it "should take 2 seconds" do
    ExampleHobsonProject.sleep_and_log_for 2
  end

end
