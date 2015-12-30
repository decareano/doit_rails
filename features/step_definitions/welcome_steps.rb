Given(/^I am on the homepage$/) do
  VCR.use_cassette("general") do
  	visit root_path
  end
end

Then(/^I should see "(.*?)"$/) do |arg1|
  expect(page).to have_content("Volunteer opportunities")
end

Then(/^I should see a map$/) do
  VCR.use_cassette("general") do
    expect(page).to have_selector('div[class="gm-style"]', count: 1)
  end
end

Then(/^I should see a pin on the map with Driver volunteer opportunity$/) do
  VCR.use_cassette("general") do
    expect(page).to have_selector('area[title="\"Driver volunteer\""]', count: 1)
  end
end

