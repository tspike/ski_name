require 'spec_helper'

describe Name do
  it "should have 26 * 3 total entries" do
    Name.all.count.should be 26*3 
  end
end
