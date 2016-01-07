# spec/requests/weather_spec.rb

require 'billy/rspec'
describe 'Weather for Bath, UK', :js => true do

  it 'should fetch the temperature from openweathermap.org' do
    # fake some JSONP data
    proxy.stub('http://openweathermap.org/data/weather/2656173')
      .and_return(:jsonp => {:temp => 12.7})

    visit '/weather/'
    page.should have_content('Current temperature for Bath, UK: 12.7°C')
  end

  it "should fail gracefully when openweathermap.org isn't available" do
    # fake a failure
    proxy.stub('http://openweathermap.org/data/weather/2656173')
      .and_return(:code => 500)

    visit '/weather/'
    page.should have_content('Current temperature for Bath, UK: unavailable')
  end

end