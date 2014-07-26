#
# Author:: MiYABiS
# Cookbook Name:: Entity Code Generator
# Recipe:: default
#
# Copyright:: Copyright (c) 2013 MiYABiS
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

windows_batch "setup_ecg" do
  code <<-EOH
  "%PROGRAMFILES%\\Internet Explorer\\iexplore.exe" "#{node['clickonce_ecg']['url']}"
  EOH
  returns 1
end
