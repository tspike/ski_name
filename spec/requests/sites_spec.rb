require 'spec_helper'

describe "Sites" do
  before(:each) do
    visit root_path
  end

  it "should have a field for your initials" do
    page.should have_field 'Initials'
  end

  it "should return the right names" do
    fill_in 'Initials', :with => 'TAS'
    click_button 'Create Initial'
    page.should have_content 'Big Bones Davis'
  end
end
