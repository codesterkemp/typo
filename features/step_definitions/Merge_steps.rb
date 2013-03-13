#Merge_steps.rb
require 'uri'
require 'cgi'
require File.expand_path(File.join(File.dirname(__FILE__), "..", "support", "paths"))
require File.expand_path(File.join(File.dirname(__FILE__), "..", "support", "selectors"))

module WithinHelpers
  def with_scope(locator)
    locator ? within(*selector_for(locator)) { yield } : yield
  end
end
World(WithinHelpers)

Then /^the form field containing the ID of the article to merge with must have the HTML attribute name set to merge_with$/ do
  pending # express the regexp above with the code you wish you had
end

Then /^if the Articles exists$/ do
  pending # express the regexp above with the code you wish you had
end

Then /^are not the same Articles$/ do
  pending # express the regexp above with the code you wish you had
end

Then /^I can merge Articles$/ do
  pending # express the regexp above with the code you wish you had
end

When /^articles are merged$/ do
  pending # express the regexp above with the code you wish you had
end

Then /^I should see the text and comments from both articles$/ do
  pending # express the regexp above with the code you wish you had
end

Then /^there should be only (\d+) author and title$/ do |arg1|
  pending # express the regexp above with the code you wish you had
end

Then /^the author and title should be from original articles$/ do
  pending # express the regexp above with the code you wish you had
end

Given /^I am not logged in as Admin$/ do
  pending # express the regexp above with the code you wish you had
end

Then /^I can not Edit Articles$/ do
  pending # express the regexp above with the code you wish you had
end
