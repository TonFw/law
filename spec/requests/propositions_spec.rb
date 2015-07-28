require 'rails_helper'

RSpec.describe "Propositions", type: :request do
  describe "GET /propositions" do
    it "works! (now write some real specs)" do
      get propositions_path
      expect(response).to have_http_status(200)
    end
  end
end
