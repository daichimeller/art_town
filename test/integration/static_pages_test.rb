require 'rubygems'
require 'rspec'

describe "Static pages" do

  describe "Home page" do

    it "should have the content 'Sample App'" do
       visit '/arts/new'
       expect(page).to have_content('Ruby on Rails Tutorial Sample App')
    end
    
    it "should not have a custom page title" do
      visit '/arts/new'
      expect(page).not_to have_title('| Home')
    end
    
   end
end



