require "rails_helper"

RSpec.describe PagesController, :type => :controller do

  describe "GET #home" do
    it "responds successfully with an HTTP 200 status code" do
      get :home
      expect(response).to be_success
      expect(response).to have_http_status(200)
    end
  end

  describe "GET #equipe" do
    it "responds successfully with an HTTP 200 status code" do
      get :equipe
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

  describe "GET #prix" do
    it "prix successfully with an HTTP 200 status code" do
      get :contact
      expect(response).to be_success
      expect(response).to have_http_status(200)
    end
  end

  describe "GET #avocatconnecte" do
    it "avocatconnecte successfully with an HTTP 200 status code" do
      get :avocatconnecte
      expect(response).to be_success
      expect(response).to have_http_status(200)
    end
  end

end