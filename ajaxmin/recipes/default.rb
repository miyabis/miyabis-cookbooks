#
# Author:: MiYABiS
# Cookbook Name:: Microsoft Ajax Minifier
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

download_url = CodePlex.download_url('aspnet', node['ajaxmin']['download_id'],"","")
file_name = node['ajaxmin']['package_name']

remote_file "#{Chef::Config[:file_cache_path]}/#{file_name}" do
  source download_url
  notifies :install, "windows_package[ajaxmin]", :immediately
end

windows_package 'ajaxmin' do
  source Chef::Config[:file_cache_path] + '\\' + node['ajaxmin']['package_name']
  options "/passive"
  timeout 180000
  action :nothing
end
