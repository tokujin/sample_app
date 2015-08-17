# require 'rails_helper'
#
# RSpec.describe "UserPages", type: :request do
#   describe "GET /user_pages" do
#     it "works! (now write some real specs)" do
#       get user_pages_index_path
#       expect(response).to have_http_status(200)
#     end
#   end
# end

require 'spec_helper'

describe "User pages" do

  subject { page }

  describe "singup page" do
    before {visit signup_path}

    it {should have_selector}('h1', text: 'Sign up')}
    it {should have_selector}('title', text: full_title('Sign up'))}    
  end

end
