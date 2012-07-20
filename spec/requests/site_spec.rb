require 'spec_helper'

describe "Site" do
  before(:each) do
    visit root_path
  end

  it "should have a field for your initials" do
    page.should have_field 'Initials'
  end

  it "should return the right names" do
    fill_in 'Initials', :with => 'TAS'
    click_button 'Create Initial'
    page.should have_content 'Iffy Stash McFaceplant'

    visit root_path
    fill_in 'Initials', :with => 'EWW'
    click_button 'Create Initial'
    page.should have_content 'Craggy Poser Camberson'
  end
end
