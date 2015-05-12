# Encoding: UTF-8
#
# Cookbook Name:: kindle
# Library:: provider_kindle_app_windows
#
# Copyright 2015 Jonathan Hartman
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

require 'chef/provider/lwrp_base'
require_relative 'provider_kindle_app'
require_relative 'provider_kindle_app_windows_direct'

class Chef
  class Provider
    class KindleApp < Provider::LWRPBase
      # An empty parent class for the Kindle for Windows providers.
      #
      # @author Jonathan Hartman <j@p4nt5.com>
      class Windows < KindleApp
        # `URL` varies by sub-provider
        PATH ||= ::File.expand_path('/Program Files (x86)/Amazon/Kindle')
      end
    end
  end
end
