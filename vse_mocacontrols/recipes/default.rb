#
# Author:: MiYABiS
# Cookbook Name:: Moca.NET Windows Forms Controls
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

windows_package node['MocaControls']['package_name'] do
  source node['MocaControls']['url']
  checksum node['MocaControls']['checksum']
  installer_type :custom
  timeout 180000
  action :install
end
