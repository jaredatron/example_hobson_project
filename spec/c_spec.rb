require 'spec_helper'

describe 'C' do

  it "this should take 0.4 seconds and pass" do
    sleep_and_test 0.4, :pass
  end

  it "this should take 0.1 seconds and fail" do
    sleep_and_test 0.1, :fail
  end

end
