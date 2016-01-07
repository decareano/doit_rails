Before('@billy') do
  Capybara.current_driver = :poltergeist_billy
end

And /^a stub for a website$/ do
  proxy.stub('http://www.yahoo.com').and_return(:text => "Katie Couric")
  visit 'http://www.yahoo.com/'
  #byebug
  expect(page).to have_content("Katie Couric")
end