#
# Author:: MiYABiS
# Cookbook Name:: Explzh
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
  default['Explzh']['url']          = "http://www.ponsoftware.com/archiver/explzh/explz717_x64.exe"
  default['Explzh']['package_name'] = "Explzh 9.22 (x64 edition).exe"
else
  default['Explzh']['url']          = "http://www.ponsoftware.com/archiver/explzh/explz717.exe"
  default['Explzh']['package_name'] = "Explzh 9.22.exe"
end
