module TestSupport

  def sleep_and_test seconds, result
    sleep seconds.to_f
    result.to_sym.should == :pass
  end

end
