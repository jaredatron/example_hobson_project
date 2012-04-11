require 'spec_helper'

describe 'A 1' do
  it "should work" do
    true.should be_true
  end
end

describe 'A 2' do
  it "should not work" do
    true.should be_false
  end
end

describe 'A 3' do
  it "should also work" do
    true.should be_true
  end
end
