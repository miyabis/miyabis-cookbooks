#
# Author:: MiYABiS
# Cookbook Name:: SnapCrab for Windows
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

remote_file "#{Chef::Config[:file_cache_path]}/#{node['snapcrab']['package_name']}" do
  source node['snapcrab']['url']
  checksum node['snapcrab']['checksum']
  notifies :install, "windows_package[snapcrab]", :immediately
end

windows_package 'snapcrab' do
  source Chef::Config[:file_cache_path] + '\\' + node['snapcrab']['package_name']
  checksum node['snapcrab']['checksum']
  installer_type :custom
  timeout 180000
  action :nothing
end
