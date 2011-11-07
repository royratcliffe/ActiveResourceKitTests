desc "Executed (freely) once a day at Heroku"
task :cron => :environment do
  # Reload the fixtures in case the database fails due to lack of correct
  # fixture content. Active resource tests presume that the fixture are in
  # place; otherwise tests will fail incorrectly, or in other words, fail for
  # the wrong reason.
  Rake::Task['db:fixtures:load'].invoke
end
