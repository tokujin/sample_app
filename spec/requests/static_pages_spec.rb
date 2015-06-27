require 'rails_helper'

# RSpec.describe "Static Pages", type: :request do
#   describe "GET /static_pages" do
#     it "works! (now write some real specs)" do
#       get static_pages_index_path
#       expect(response).to have_http_status(200)
#     end
#   end
# end

describe "Statoc pages" do

  describe "Home page" do
    it "shoudl have the content 'Sample App'" do
        visit '/static_pages/home'
        page.should have_content('Sample App')
    end
  end
end
