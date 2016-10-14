require "rails_helper"

RSpec.describe PagesController, :type => :controller do

  describe "GET #home" do
    it "responds successfully with an HTTP 200 status code" do
      get :home
      expect(response).to be_success
      expect(response).to have_http_status(200)
    end

    # it "renders the index template" do
    #   get :index
    #   expect(response).to render_template("index")
    # end
  end

  describe "GET #programme" do
    it "responds successfully with an HTTP 200 status code" do
      get :programme
      expect(response).to be_success
      expect(response).to have_http_status(200)
    end
  end

  describe "GET #contact" do
    it "responds successfully with an HTTP 200 status code" do
      get :contact
      expect(response).to be_success
      expect(response).to have_http_status(200)
    end
  end

end