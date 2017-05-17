# (Fake) Sidekiq-pro

So... Sidekiq-pro expired on RubyGems. I decided to register it because I believe it might be dangerous, let's say you're a sidekiq-pro user instead of :

```
source 'https://gems.contribsys.com/' do
  gem 'sidekiq-pro'
end
```

If you actually forget the `source` statement, you WILL load this gem. This could cause some bad-guys to load malicious code inside of your app. You're welcome !
