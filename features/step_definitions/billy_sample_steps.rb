Before('@billy') do
  Capybara.current_driver = :poltergeist
end

And /^a stub for a website$/ do
  proxy.stub('http://www.yahoo.com').and_return(:text => "Katie Couric examines the disease")
  visit 'http://www.yahoo.com/'
  expect(page).to have_content("Katie Couric examines the disease")
end