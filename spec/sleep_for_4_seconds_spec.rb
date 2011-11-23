require 'spec_helper'

describe 'sleeping for 4 seconds' do

  it "should take 4 seconds" do
    ExampleHobsonProject.sleep_and_log_for 4
  end

end
