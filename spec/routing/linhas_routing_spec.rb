require "spec_helper"

describe LinhasController do
  describe "routing" do

    it "routes to #index" do
      get("/linhas").should route_to("linhas#index")
    end

    it "routes to #new" do
      get("/linhas/new").should route_to("linhas#new")
    end

    it "routes to #show" do
      get("/linhas/1").should route_to("linhas#show", :id => "1")
    end

    it "routes to #edit" do
      get("/linhas/1/edit").should route_to("linhas#edit", :id => "1")
    end

    it "routes to #create" do
      post("/linhas").should route_to("linhas#create")
    end

    it "routes to #update" do
      put("/linhas/1").should route_to("linhas#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/linhas/1").should route_to("linhas#destroy", :id => "1")
    end

  end
end
