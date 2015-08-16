require 'rails_helper'

RSpec.describe "Static Pages", type: :request do

  describe "Home page" do
    it "should have the content 'Sample App'" do
      visit '/static_pages/home'
      expect(page).to have_selector('h1', :text => 'Sample App')
    end

    it "should have the right title" do
      visit '/static_pages/home'
      expect(page).to have_selector('title',
                      :text => "Ruby on Rails Tutorial Sample App", :visible => false)
    end

    it "should not have custom page title" do
      visit '/static_pages/home'
      expect(page).not_to have_selector('title',
                      :text => "| Home", :visible => false)
    end

  end

  describe "Help page" do
    it "should have the content 'Help page'" do
      visit '/static_pages/help'
      expect(page).to have_selector('h1', :text => 'Help page')
    end
    it "should have the right title" do
      visit '/static_pages/help'
      expect(page).to have_selector('title',
                      :text => "Ruby on Rails Tutorial Sample App | Help", :visible => false)

    end
  end

  describe "About page" do
    it "should have the content 'About Us'" do
      visit '/static_pages/about'
      expect(page).to have_selector('h1', :text => 'About Us')
    end
    it "should have the right title" do
       visit '/static_pages/about'
      expect(page).to have_selector('title',
                      :text => "Ruby on Rails Tutorial Sample App | About Us", :visible => false)

    end
  end

  describe "Contact page" do
    it "should have the content 'Content'" do
      visit '/static_pages/contact'
      expect(page).to have_selector('h1', :text => 'Contact')
    end
    it "should have the right title" do
       visit '/static_pages/contact'
      expect(page).to have_selector('title',
                      :text => "Ruby on Rails Tutorial Sample App | Contact", :visible => false)

    end
  end


end
