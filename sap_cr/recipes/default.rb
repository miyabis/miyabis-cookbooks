#
# Author:: MiYABiS
# Cookbook Name:: SAP Crystal Reports
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

windows_batch "del" do
  code <<-EOH
  rd /q /s "#{Chef::Config[:file_cache_path]}"
  EOH
end

#remote_file "#{Chef::Config[:file_cache_path]}/#{node['sapcr']['public_fnc_mst']['mst_name']}" do
#  source node['sapcr']['public_fnc_mst']['url']
#  checksum node['sapcr']['public_fnc_mst']['checksum']
#end

#remote_file "#{Chef::Config[:file_cache_path]}/#{node['sapcr']['public_fnc_mst']['package_name']}" do
#  source node['sapcr']['public_fnc_mst']['url_exe']
#end

remote_file "#{Chef::Config[:file_cache_path]}/#{node['sapcr']['SP5']['dev']['package_name']}" do
  source node['sapcr']['SP5']['dev']['url']
  checksum node['sapcr']['SP5']['dev']['checksum']
end

remote_file "#{Chef::Config[:file_cache_path]}/#{node['sapcr']['SP5']['zip_name']}" do
  source node['sapcr']['SP5']['url']
  checksum node['sapcr']['SP5']['checksum']
  notifies :install, "windows_package[install_sapcr_dev]", :immediately
end

windows_package 'install_sapcr_dev' do
  source "#{Chef::Config[:file_cache_path]}\\#{node['sapcr']['SP5']['dev']['package_name']}"
  options '/qb UPGRADE=1 TRANSFORMS="#{Chef::Config[:file_cache_path]}\\' + node['sapcr']['public_fnc_mst']['package_name'] + '"'
  installer_type :custom
  timeout 180000
  notifies :run, "windows_batch[unzip_dlfile]", :immediately
  action :nothing
end
#windows_package 'install_sapcr_dev' do
#  source "#{Chef::Config[:file_cache_path]}/#{node['sapcr']['public_fnc_mst']['package_name']}"
#  options "#{Chef::Config[:file_cache_path]}/#{node['sapcr']['SP5']['dev']['package_name']}"
#  installer_type :custom
#  timeout 180000
#  action :nothing
#end

windows_batch "unzip_dlfile" do
  code <<-EOH
  "C:\\7-Zip\\7z.exe" x "#{Chef::Config[:file_cache_path]}\\#{node['sapcr']['SP5']['zip_name']}" -o"#{Chef::Config[:file_cache_path]}" -r -y
  EOH
  notifies :install, "windows_package[install_sapcr]", :immediately
  action :nothing
end

windows_package 'install_sapcr' do
  source Chef::Config[:file_cache_path] + '\\' + node['sapcr']['SP5']['package_name']
  options "/passive"
  timeout 180000
  action :nothing
end
