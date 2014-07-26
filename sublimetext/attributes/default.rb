#
# Author:: MiYABiS
# Cookbook Name:: SublimeText
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

if kernel['machine'] =~ /x86_64/
  default['SublimeText']['url']          = "http://c758482.r82.cf2.rackcdn.com/Sublime%20Text%202.0.2%20x64%20Setup.exe"
  default['SublimeText']['package_name'] = "SublimeText_x64.exe"
else
  default['SublimeText']['url']          = "http://c758482.r82.cf2.rackcdn.com/Sublime%20Text%202.0.2%20Setup.exe"
  default['SublimeText']['package_name'] = "SublimeText.exe"
end
