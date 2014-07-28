#
# Author:: MiYABiS
# Cookbook Name:: MSBuild Extension Pack 
# Attribute:: default
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

default['msbuild_extpack']['url']          = "http://msbuildextensionpack.codeplex.com/downloads/get/808873"
default['msbuild_extpack']['download_id']  = "808873"
default['msbuild_extpack']['zip_name'] = "MSBuildExtensionPack.zip"

default['msbuild_extpack']['zip_name35'] = "MSBuild Extension Pack 3.5.14.0.zip"
default['msbuild_extpack']['zip_name35ins'] = "MSBuild Extension Pack 3.5.* Installers.zip"

default['msbuild_extpack']['zip_name40'] = "MSBuild Extension Pack 4.0.9.0.zip"
default['msbuild_extpack']['zip_name40ins'] = "MSBuild Extension Pack 4.0.* Installers.zip"

if kernel['machine'] =~ /x86_64/
  default['msbuild_extpack']['package_name40'] = "4.0.9.0\\x64\\MSBuild Extension Pack 4 (x64).msi"
  default['msbuild_extpack']['package_name35'] = "3.5.14.0\\x64\\MSBuild Extension Pack 3.5 (x64).msi"
else
  default['msbuild_extpack']['package_name40'] = "4.0.9.0\\x86\\MSBuild Extension Pack 4 (x86).msi"
  default['msbuild_extpack']['package_name35'] = "3.5.14.0\\x86\\MSBuild Extension Pack 3.5 (x86).msi"
end
