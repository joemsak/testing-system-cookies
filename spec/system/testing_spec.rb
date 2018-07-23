require 'rails_helper'

RSpec.describe "cookies", :js do
  it "works" do
    visit set_cookie_path
    visit get_cookie_path
  end
end
