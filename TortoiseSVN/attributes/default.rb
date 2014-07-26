#
# Author:: MiYABiS
# Cookbook Name:: TortoiseSVN
# Attribute:: default
#
# Copyright:: Copyright (c) 2013 MiYABiS.
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
	default['TortoiseSVN']['url']                  = "http://downloads.sourceforge.net/project/tortoisesvn/1.7.14/Application/TortoiseSVN-1.7.14.24257-x64-svn-1.7.16.msi"
	default['TortoiseSVN']['package_name']         = "TortoiseSVN.exe"
	default['TortoiseSVN']['Lang']['url']          = "http://downloads.sourceforge.net/project/tortoisesvn/1.7.14/Language%20Packs/LanguagePack_1.7.14.24257-x64-ja.msi"
	default['TortoiseSVN']['Lang']['package_name'] = "TortoiseSVNLang.exe"
else
	default['TortoiseSVN']['url']                  = "http://downloads.sourceforge.net/project/tortoisesvn/1.7.14/Application/TortoiseSVN-1.7.14.24257-win32-svn-1.7.16.msi"
	default['TortoiseSVN']['package_name']         = "TortoiseSVN.exe"
	default['TortoiseSVN']['Lang']['url']          = "http://downloads.sourceforge.net/project/tortoisesvn/1.7.14/Language%20Packs/LanguagePack_1.7.14.24257-win32-ja.msi"
	default['TortoiseSVN']['Lang']['package_name'] = "TortoiseSVNLang.exe"
end
