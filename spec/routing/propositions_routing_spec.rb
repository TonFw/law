require "rails_helper"

RSpec.describe PropositionsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/propositions").to route_to("propositions#index")
    end

    it "routes to #new" do
      expect(:get => "/propositions/new").to route_to("propositions#new")
    end

    it "routes to #show" do
      expect(:get => "/propositions/1").to route_to("propositions#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/propositions/1/edit").to route_to("propositions#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/propositions").to route_to("propositions#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/propositions/1").to route_to("propositions#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/propositions/1").to route_to("propositions#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/propositions/1").to route_to("propositions#destroy", :id => "1")
    end

  end
end
