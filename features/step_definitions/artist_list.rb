
Given("I go to the homepage") do
  visit "/"  # Write code here that turns the phrase above into concrete actions
end

When(/^I am on the homepage$/) do

end

Then(/^I should see "(.*?)"$/) do |string|
  expect(page).to have_text string # Write code here that turns the phrase above into concrete actions

end

Then(/^I should see keyword/) do
  expect(page).to have_css "input[name=keyword]", count=1  # Write code here that turns the phrase above into concrete actions

end

When /^I fill in "([^\"]*)" with "([^\"]*)"$/ do |field, value|
  fill_in(field, :with => value)
end

When /^I press "([^\"]*)"$/ do |button|
  click_button(button)
end
