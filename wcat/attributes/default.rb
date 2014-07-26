#
# Author:: MiYABiS
# Cookbook Name:: WCat
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
	# http://www.iis.net/downloads/community/2007/05/wcat-63-(x64)
	default['WCat']['url']          = "http://www.iis.net/Downloads/files/wcat/wcat.amd64.msi"
	default['WCat']['package_name'] = "wcat.amd64.msi"
else
	# http://www.iis.net/downloads/community/2007/05/wcat-63-(x86)
	default['WCat']['url']          = "http://www.iis.net/Downloads/files/wcat/wcat.x86.msi"
	default['WCat']['package_name'] = "wcat.x86.msi"
end
