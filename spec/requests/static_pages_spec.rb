#require 'spec_helper'

#describe "Static pages" do

  # describe "Home page" do

  #   it "should have the content 'Sample App'" do
  #     visit root_path
  #     expect(page).to have_content('Sample App')
  #   end

  #   it "should have the title 'Home'" do
  #     #visit '/static_pages/home'
  #     expect(page).to have_title("DemoApp | Home")
  #   end
  # end

  # describe "Help page" do
  #   it "should have the content 'Help'" do
  #     visit '/static_pages/help'
  #     expect(page).to have_content('Help')
  #   end

  #   it "should have the title 'Help'" do
  #     visit '/static_pages/help'
  #     expect(page).to have_title("DemoApp | Help")
  #   end
  # end

  # describe "About page" do

  #   it "should have the content 'About Us'" do
  #     visit '/static_pages/about'
  #     expect(page).to have_content('About Us')
  #   end

  #   it "should have the title 'About Us'" do
  #     visit '/static_pages/about'
  #     expect(page).to have_title("DemoApp | About Us")
  #   end
  # end
#   before { visit root_path }

#   it "should have the content 'Sample App'" do
#     expect(page).to have_content('Sample App')
#   end

#   it "should have the base title" do
#     expect(page).to have_title("Ruby on Rails Tutorial Sample App")
#   end

#   it "should not have a custom page title" do
#     expect(page).not_to have_title('| Home')
#   end
# end



### Setup 2 ######################

# require 'spec_helper'


# describe "Static pages" do

#   ### Added base title to reduce redundant code ###
#   let(:base_title) { "DemoApp" }
#   let(:root_path) { "/" }

#   subject { page }

#   describe "Home page" do
#     before { visit root_path }

#     it { should have_content('Sample App') }
#     it { should have_title(base_title) }
#     it { should_not have_title('| Home') }
#   end

#   describe "Help page" do
#     it "should have the content 'Help'" do
#       visit '/help'
#       expect(page).to have_content('Help')
#     end

#     it "should have the title 'Help'" do
#       visit '/help'
#       expect(page).to have_title("#{base_title} | Help")
#     end
#   end

#   describe "About page" do

#     it "should have the content 'About Us'" do
#       visit '/about'
#       expect(page).to have_content('About Us')
#     end

#     it "should have the title 'About Us'" do
#       visit '/about'
#       expect(page).to have_title("#{base_title} | About Us")
#     end
#   end

#   describe "Contact page" do

#     it "should have the content 'Contact'" do
#       visit '/contact'
#       expect(page).to have_content('Contact')
#     end

#     it "should have the title 'Contact'" do
#       visit '/contact'
#       expect(page).to have_title("#{base_title} | Contact")
#     end
#   end
# end
###################################
require 'spec_helper'

describe "Static pages" do

  subject { page }

  describe "Home page" do
    before {  visit '/' }

    it { should have_content('Sample App') }
    it { should have_title(full_title('Home')) }
  end

  describe "Help page" do
    before { visit '/help' }

    it { should have_content('Help') }
    it { should have_title(full_title('Help')) }
  end

  describe "About page" do
    before { visit '/about' }

    it { should have_content('About') }
    it { should have_title(full_title('About Us')) }
  end

  describe "Contact page" do
    before { visit '/contact' }

    it { should have_content('Contact') }
    it { should have_title(full_title('Contact')) }
  end
end
# This creates the spec.rb in the spec/requests directory. As with most generated code, the result is not pretty, so let’s open static_pages_spec.rb with a text editor and replace it with the contents of Listing 3.9.

# The code in Listing 3.9 is pure Ruby, but even if you’ve studied Ruby before it might not look familiar. This is because RSpec uses the general malleability of Ruby to define a domain-specific language (DSL) built just for testing. The important point is that you do not need to understand RSpec’s syntax to be able to use RSpec. It may seem like magic at first, but RSpec and Capybara are designed to read more or less like English, and if you follow the examples in this tutorial you’ll pick it up fairly quickly.

# Listing 3.9 contains a describe block with one example, i.e., a block starting with it "…" do:


# The first line indicates that we are describing the Home page. This description is just a string, and it can be anything you want; RSpec doesn’t care, but you and other human readers probably do. Then the spec says that when you visit the Home page at /static_pages/home, the content should contain the words “Sample App”. As with the first line, what goes inside the quote marks is irrelevant to RSpec, and is intended to be descriptive to human readers. Then the line

# visit '/static_pages/home'

# uses the Capybara function visit to simulate visiting the URL /static_pages/home in a browser, while the line

# expect(page).to have_content('Sample App')


# uses the page variable (also provided by Capybara) to express the expectation that the resulting page should have the right content.

# To get the test to run properly, we have to add a line to the spec_helper.rb file, as shown in Listing 3.10.

# This file is copied to spec/ when you run 'rails generate rspec:install'
# .
# .
# .
# RSpec.configure do |config|
#   .
#   .
#   .
#   config.include Capybara::DSL
# end

# require 'spec_helper'

# describe "Static pages" do

#   describe "Home page" do

#     it "should have the content 'Sample App'" do
#       visit '/static_pages/home'
#       expect(page).to have_content('Sample App')
#     end
#   end
# end