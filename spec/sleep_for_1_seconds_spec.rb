require 'spec_helper'

describe 'sleeping for 1 second' do

  it "should take 1 second" do
    ExampleHobsonProject.sleep_and_log_for 1
  end

end
