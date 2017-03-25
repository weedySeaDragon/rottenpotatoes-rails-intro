
Before('@javascript') do
  Capybara.current_driver = :selenium
  Capybara.javascript_driver = :selenium
end

After('@javascript') do
  Capybara.reset_sessions!
  Capybara.current_driver = :rack_test
end

=begin
After do |scenario|
  if scenario.failed?
    save_page
  end
end
=end
