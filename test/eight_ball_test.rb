require 'test_helper'

class EightBallTest < ActionDispatch::IntegrationTest

  def setup
    @base_title = "Ruby on Rails Tutorial Sample App"
    config.include Capybara::DSL 
  end

  test "navigate to 8 ball page" do
    visit "/eightball"
    find('#eightball')
  end

  test "should get eightball title" do
    get "/eightball"
    assert_response :success
    assert_select "title", "EightBall | #{@base_title}"
  end

  test "make sure the text is displayed (can be found) after 'Shake' is pressed" do
    visit "/eightball"
    find('#eightball').click
    find('#eightballOutcome')
  end

  test "navigate to 8 ball page and then back to home page" do
    visit "/eightball"
    find('#eightball')
    visit "/home"
    page.find('h1', text: "Home")
  end

  test "navigate to 8 ball page and then to contact page" do
    visit "/eightball"
    find('#eightball')
    visit "/contact"
    page.find('h1', text: "Contact")
  end

  test "navigate to 8 ball page and then to about page" do
    visit "/eightball"
    find('#eightball')
    visit "/about"
    page.find('h1', text: "About")
  end
end
