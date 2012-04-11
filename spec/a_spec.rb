require 'spec_helper'

describe 'A' do

  it "this should take 4.1 seconds and fail" do
    sleep_and_test 4.1, :fail
  end

  it "this should take 3.7 seconds and pass" do
    sleep_and_test 3.7, :pass
  end

end
