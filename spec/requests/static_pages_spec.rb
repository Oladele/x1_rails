require 'spec_helper'

describe "StaticPages" do
  
  describe "Landing page" do

    it "should have the right title" do
      visit root_path
      expect(page).to have_title("Xtronger")
    end    

    it "should have the content 'Xtronger'" do
      visit root_path
      expect(page).to have_content('Xtronger')
    end
  end

  describe "Coming-soon page" do

    it "should have the right title" do
      visit '/static_pages/coming_soon'
      expect(page).to have_title("Xtronger")
    end    

    it "should have the content 'Coming soon'" do
      visit root_path
      expect(page).to have_content('Coming soon')
    end
  end
end
