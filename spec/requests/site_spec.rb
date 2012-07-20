require 'spec_helper'

describe "Site" do
  before(:each) do
    visit root_path
  end

  it "should have a field for your initials" do
    page.should have_field 'initial_initials'
  end

  it "gives the correct skier name", :js => true do
    fill_in 'initial_initials', :with => 'TAS'
    wait_until { page.find('#result').text.split(/ /).length == 3 }
    page.should have_content 'Iffy Stash McFaceplant'

    visit root_path
    fill_in 'initial_initials', :with => 'EWW'
    wait_until { page.find('#result').text.split(/ /).length == 3 }
    page.should have_content 'Craggy Poser Camberson'
  end

  it "handles bad input", :js => true do
    fill_in 'initial_initials', :with => '@*#**('
    page.find('#result').text.should be_empty
  end

  it "handles lowercase", :js => true do
    fill_in 'initial_initials', :with => 'sfx'
    wait_until { page.find('#result').text.split(/ /).length == 3 }
    page.should have_content 'Dank Glade Rockerson'
  end

  it "handles mixed case", :js => true do
    fill_in 'initial_initials', :with => 'sFX'
    wait_until { page.find('#result').text.split(/ /).length == 3 }
    page.should have_content 'Dank Glade Rockerson'
  end
end
