Kindle Cookbook
===============
[![Cookbook Version](https://img.shields.io/cookbook/v/kindle.svg)][cookbook]
[![Build Status](https://img.shields.io/travis/RoboticCheese/kindle-chef.svg)][travis]
[![Windows Build Status](https://img.shields.io/appveyor/ci/RoboticCheese/kindle-chef.svg)][appveyor]
[![Code Climate](https://img.shields.io/codeclimate/github/RoboticCheese/kindle-chef.svg)][codeclimate]
[![Coverage Status](https://img.shields.io/coveralls/RoboticCheese/kindle-chef.svg)][coveralls]

[cookbook]: https://supermarket.chef.io/cookbooks/kindle
[travis]: https://travis-ci.org/RoboticCheese/kindle-chef
[appveyor]: https://ci.appveyor.com/project/RoboticCheese/kindle-chef
[codeclimate]: https://codeclimate.com/github/RoboticCheese/kindle-chef
[coveralls]: https://coveralls.io/r/RoboticCheese/kindle-chef

A Chef cookbook to install the Amazon Kindle app.

Requirements
============

This cookbook offers recipe-based and resource-based install options. It
supports OS X (App Store or direct download) and Windows (direct download only)
platforms.

Usage
=====

Either add the default recipe to your run_list, or implement the resource in
a recipe of your own.

Recipes
=======

***default***

Performs a simple install of the app using the default provider for your
platform.

Resources
=========

***kindle_app***

Used to perform installation of the app.

Syntax:

    kindle_app 'default' do
        action :install
    end

Actions:

| Action     | Description     |
|------------|-----------------|
| `:install` | Install the app |

Attributes:

| Attribute  | Default        | Description          |
|------------|----------------|----------------------|
| action     | `:install`     | Action(s) to perform |

Providers
=========

***Chef::Provider::KindleApp::MacOsX::AppStore***

Provider for doing installs from the Mac App Store (default for OS X).

***Chef::Provider::KindleApp::MacOsX::Direct***

Provider for downloading the .dmg file directly from Amazon.

***Chef::Provider::KindleApp::Windows::Direct***

Provider for downloading the .exe file directly from Amazon (default for
Windows).

Contributing
============

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Add tests for the new feature; ensure they pass (`rake`)
4. Commit your changes (`git commit -am 'Add some feature'`)
5. Push to the branch (`git push origin my-new-feature`)
6. Create a new Pull Request

License & Authors
=================
- Author: Jonathan Hartman <j@p4nt5.com>

Copyright 2015-2016, Jonathan Hartman

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
