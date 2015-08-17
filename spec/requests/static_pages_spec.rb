require 'rails_helper'

RSpec.describe "Static Pages", type: :request do
  subject { page }

  describe "Home page" do
    before {visit root_path}
    it {should have_selector('h1', text: 'Sample App')}
    it {should have_selector('title',
                    text: full_title(''), visible: false)}
    it {should have_selector('title',
                    text: "| Home", visible: false)}
  end

  describe "Help page" do
    before {visit help_path}
    it {should have_selector('h1', text: 'Help page')}
    it {should have_selector('title',
                    text: full_title('Help'), visible: false)}
  end

  describe "About page" do
    before {visit about_path}
    it "should have the content 'About Us'" do
      visit about_path
      expect(page).to have_selector('h1', text: 'About Us')
    end
    it "should have the right title" do
       visit '/static_pages/about'
      expect(page).to have_selector('title',
                      text: "Ruby on Rails Tutorial Sample App | About Us", :visible => false)

    end
  end

  describe "Contact page" do
    it "should have the content 'Content'" do
      visit contact_path
      expect(page).to have_selector('h1', text: 'Contact')
    end
    it "should have the right title" do
      visit contact_path
      expect(page).to have_selector('title',
                      text: "Ruby on Rails Tutorial Sample App | Contact", :visible => false)

    end
  end


end
