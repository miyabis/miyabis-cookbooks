#
# Author:: MiYABiS
# Cookbook Name:: TortoiseSVN
# Recipe:: default
#
# Copyright 2013, MiYABiS.
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

remote_file "#{Chef::Config[:file_cache_path]}\\#{node['TortoiseSVN']['package_name']}" do
  source node['TortoiseSVN']['url']
end

remote_file "#{Chef::Config[:file_cache_path]}\\#{node['TortoiseSVN']['Lang']['package_name']}" do
  source node['TortoiseSVN']['Lang']['url']
  notifies :install, "windows_package[TortoiseSVN]", :immediately
end

windows_package 'TortoiseSVN' do
  source Chef::Config[:file_cache_path] + '\\' + node['TortoiseSVN']['package_name']
  options "/passive /norestar"
  timeout 180000
  notifies :install, "windows_package[TortoiseSVNLang]", :immediately
  action :nothing
end

windows_package 'TortoiseSVNLang' do
  source Chef::Config[:file_cache_path] + '\\' + node['TortoiseSVN']['Lang']['package_name']
  options "/passive /forcerestart"
  timeout 180000
  action :nothing
end
