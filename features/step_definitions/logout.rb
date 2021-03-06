# encoding: utf-8
# !/usr/bin/env ruby

Given(/^User is logged in$/) do
  page.has_content?('Personal Boards')
end

When(/^click on user header$/) do
  @logout.click_user_header.click
end

And (/^click on logout$/) do
  @logout.click_logout.click
end

Then(/^system returns to home page$/) do
  page.has_content?('Thanks for using Trello.')
end
