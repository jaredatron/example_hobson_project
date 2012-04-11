require 'spec_helper'

describe 'B' do

  it "this should take 0.8 seconds and pass" do
    sleep_and_test 0.8, :pass
  end

  it "this should take 1.7 seconds and pass" do
    sleep_and_test 1.7, :pass
  end

end
