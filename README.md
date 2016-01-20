SpreeNutraboltInvitable
=======================

Introduction goes here.

Installation
------------

Add spree_nutrabolt_invitable to your Gemfile:

```ruby
gem 'spree_nutrabolt_invitable'
```

Bundle your dependencies and run the installation generator:

```shell
bundle
bundle exec rails g spree_nutrabolt_invitable:install
```

Testing
-------

First bundle your dependencies, then run `rake`. `rake` will default to building the dummy app if it does not exist, then it will run specs. The dummy app can be regenerated by using `rake test_app`.

```shell
bundle
bundle exec rake
```

When testing your applications integration with this extension you may use it's factories.
Simply add this require statement to your spec_helper:

```ruby
require 'spree_nutrabolt_invitable/factories'
```

Copyright (c) 2016 [name of extension creator], released under the New BSD License