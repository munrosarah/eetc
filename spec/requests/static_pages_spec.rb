require 'spec_helper'

describe "Static pages" do

  describe "Goods page" do

    it "should have the h1 'Goods'" do
      visit '/static_pages/goods'
      page.should have_selector('h1', :text => 'Goods')
    end    

    it "should have the title 'Goods'" do
      visit '/static_pages/goods'
      page.should have_selector('title',
                        :text => "ellipsis etc | Goods")
    end
  end

  describe "Help page" do

    it "should have the h1 'Help'" do
      visit '/static_pages/help'
      page.should have_selector('h1', :text => 'Help')
    end

    it "should have the title 'Help'" do
      visit '/static_pages/help'
      page.should have_selector('title',
                        :text => "ellipsis etc | Help")
    end
  end
  
end