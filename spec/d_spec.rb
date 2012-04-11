require 'spec_helper'

describe 'D' do

  it "this should take 0.3 seconds and pass" do
    sleep_and_test 0.3, :pass
  end

  it "this should take 0.7 seconds and fail" do
    sleep_and_test 0.7, :fail
  end

end
