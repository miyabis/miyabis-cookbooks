#
# Author:: MiYABiS
# Cookbook Name:: SQL Server Data Tools(SSDT)
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

# http://go.microsoft.com/fwlink/?LinkID=274981
default['ssdt']['2010']['url']          = "http://download.microsoft.com/download/C/A/A/CAA322E2-04AB-4426-9127-C5F7EAA78709/JA/SSDTSetup.exe"
default['ssdt']['2010']['package_name'] = "SSDTSetup.exe"

# http://go.microsoft.com/fwlink/?LinkID=274984
#default['ssdt']['2012']['url']          = "http://download.microsoft.com/download/C/C/D/CCDCB701-C039-48BE-87A9-E2D2806AA5A8/JA/SSDTSetup.exe"
default['ssdt']['2012']['url']          = "http://go.microsoft.com/fwlink/?LinkID=393520&clcid=0x411"
default['ssdt']['2012']['package_name'] = "SSDTSetup.exe"
