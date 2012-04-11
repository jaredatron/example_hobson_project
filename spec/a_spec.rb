require 'spec_helper'

describe 'A' do

  it "this should take 2.1 seconds and fail" do
    sleep_and_test 2.1, :fail
  end

  it "this should take 0.7 seconds and pass" do
    sleep_and_test 0.7, :pass
  end

end
