web: bundle exec unicorn -p 3000 -c ./config/unicorn.rb
resque: env TERM_CHILD=1 bundle exec rake resque:work