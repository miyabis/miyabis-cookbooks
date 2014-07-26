#
# Author:: MiYABiS
# Cookbook Name:: Moca.NET Snippets
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

download_url = CodePlex.download_url('moca', node['MocaSnippets']['download_id'],'','')
file_name = node['MocaSnippets']['package_name']

remote_file "#{Chef::Config[:file_cache_path]}/#{file_name}" do
  source download_url
  checksum node['MocaSnippets']['checksum']
  notifies :install, "windows_package[MocaSnippets]", :immediately
end

windows_package 'MocaSnippets' do
  source Chef::Config[:file_cache_path] + '\\' + node['MocaSnippets']['package_name']
  checksum node['MocaSnippets']['checksum']
  installer_type :custom
  timeout 180000
  action :nothing
end
