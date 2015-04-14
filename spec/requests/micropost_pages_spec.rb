require 'spec_helper'

describe "Micropost pages" do
  let(:user) { FactoryGirl.create(:user) }

  describe "Micropost creation" do
    before { valid_signin(user) }
    before { visit root_path }
    it { expect(page).to have_content(user.name) }
    it { expect(page).to have_selector('textarea') }

    describe "with invalid information" do
      it "should not create a new micropost" do
        expect { click_button "Post" }.not_to change { Micropost.count }
        expect(page).to have_selector('div.alert.alert-error')
      end
    end

    describe "with valid information" do
      it "should create a new post" do
        fill_in "micropost_content", with: "Hello Everyone this is testing"
        expect { click_button "Post" }.to change { Micropost.count }.by(1)
        expect(page).to have_content("Micropost successfully created!")
      end
    end
  end
end