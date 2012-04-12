Given /^I'm on the homepage$/ do
  visit "/"
end

Given /^I fill "([^"]*)" with "([^"]*)"$/ do |arg1, arg2|
  fill_in arg1, :with => arg2
end

When /^I press "([^"]*)"$/ do |arg1|
  click_button arg1
end

Then /^I should see "([^"]*)"$/ do |arg1|
  page.should have_content(arg1)
end

Then /^show me the page$/ do
  save_and_open_page
end
