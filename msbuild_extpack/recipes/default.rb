#
# Author:: MiYABiS
# Cookbook Name:: MSBuild Extension Pack 
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

download_url = CodePlex.download_url('msbuildextensionpack', node['msbuild_extpack']['download_id'],"","")
file_name = node['msbuild_extpack']['zip_name']

remote_file "#{Chef::Config[:file_cache_path]}\\#{file_name}" do
  source download_url
  notifies :run, "windows_batch[unzip_dlfile]", :immediately
end

windows_batch "unzip_dlfile" do
  code <<-EOH
  "C:\\7-Zip\\7z.exe" x "#{Chef::Config[:file_cache_path]}\\#{file_name}" -o"#{Chef::Config[:file_cache_path]}" -r -y
  EOH
  notifies :run, "windows_batch[unzip_zip_name40]", :immediately
  action :nothing
end

windows_batch "unzip_zip_name40" do
  code <<-EOH
  "C:\\7-Zip\\7z.exe" x "#{Chef::Config[:file_cache_path]}\\#{node['msbuild_extpack']['zip_name40']}" -o"#{Chef::Config[:file_cache_path]}" -r -y
  EOH
#  notifies :run, "windows_batch[unzip_zip_name40ins]", :immediately
  notifies :install, "windows_package[package_name40]", :immediately
  action :nothing
end

#windows_batch "unzip_zip_name40ins" do
#  code <<-EOH
#  "C:\\7-Zip\\7z.exe" x "#{Chef::Config[:file_cache_path]}\\#{node['msbuild_extpack']['zip_name40ins']}" -o"#{Chef::Config[:file_cache_path]}" -r -y
#  EOH
#  notifies :install, "windows_package[package_name40]", :immediately
#  action :nothing
#end

windows_package 'package_name40' do
  source Chef::Config[:file_cache_path] + '\\' + node['msbuild_extpack']['package_name40']
  options "/passive"
  timeout 180000
  action :nothing
end
