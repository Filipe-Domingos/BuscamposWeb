require "spec_helper"

describe OnibusController do
  describe "routing" do

    it "routes to #index" do
      get("/onibus").should route_to("onibus#index")
    end

    it "routes to #new" do
      get("/onibus/new").should route_to("onibus#new")
    end

    it "routes to #show" do
      get("/onibus/1").should route_to("onibus#show", :id => "1")
    end

    it "routes to #edit" do
      get("/onibus/1/edit").should route_to("onibus#edit", :id => "1")
    end

    it "routes to #create" do
      post("/onibus").should route_to("onibus#create")
    end

    it "routes to #update" do
      put("/onibus/1").should route_to("onibus#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/onibus/1").should route_to("onibus#destroy", :id => "1")
    end

  end
end
