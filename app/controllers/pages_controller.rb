class PagesController < ApplicationController
  def home
  end

  def programme
  end

  def contact
    @prospect = Prospect.new
  end
end
