require "stories_helper"

class SiteTest < Test::Unit::TestCase
  story "As a website user I want to see instructions and a form on the homepage so I know how to look up an abbreviation" do
    scenario "A visitor goes to the homepage" do
      visit "/"
      assert_have_selector 'form input#acronym'
      assert_contain "Enter a knitting abbreviation"
    end
  end

  story "As a website user I want to see the meaning of an abbreviation I enter" do
    scenario "A visitor goes to the homepage" do
      visit "/lookup?acronym=k"
      assert_contain("knit")
    end
  end

  story "As a website user I want to see a helpful error message when I enter a non-existent abbreviation" do
    scenario "A visitor goes to the homepage" do
      visit "/lookup?acronym=foo"
      assert_contain("Sorry, couldn't find anything for that abbreviation.")
    end
  end
end
