require 'spec_helper'

describe 'sleeping for 7 seconds' do

  it "should take 7 seconds" do
    ExampleHobsonProject.sleep_and_log_for 7
  end

end
