require 'spec_helper'

describe 'sleeping for 8 seconds' do

  it "should take 8 seconds" do
    ExampleHobsonProject.sleep_and_log_for 8
  end

end
