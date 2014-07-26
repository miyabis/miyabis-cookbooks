#
# Author:: MiYABiS
# Cookbook Name:: SAP Crystal Reports
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

default['sapcr']['public_fnc_mst']['url']          = "http://kb.flexerasoftware.com/selfservice/viewAttachment.do?attachID=public_fnc.mst&documentID=Q207355"
default['sapcr']['public_fnc_mst']['url_exe']      = "http://kb.flexerasoftware.com/selfservice/viewAttachment.do?attachID=public_FNC+XForm.exe&documentID=Q207355"
default['sapcr']['public_fnc_mst']['checksum']     = "50cb20727204b11dd03f4d75e18cc577"
default['sapcr']['public_fnc_mst']['mst_name']     = "public_fnc.mst"
default['sapcr']['public_fnc_mst']['package_name'] = "public_FNCXForm.exe"

default['sapcr']['SP5']['dev']['url']          = "http://downloads.businessobjects.com/akdlm/cr4vs2010/CRforVS_13_0_5.exe"
default['sapcr']['SP5']['dev']['checksum']     = "009897c4658ed0d976a8ddb65db111e3"
default['sapcr']['SP5']['dev']['package_name'] = "CRforVS_13_0_5.exe"

if kernel['machine'] =~ /x86_64/
  default['sapcr']['SP5']['url']          = "http://downloads.businessobjects.com/akdlm/cr4vs2010/CRforVS_redist_install_64bit_13_0_5.zip"
  default['sapcr']['SP5']['checksum']     = "fccedf13022401ba6cbbd8c533b725ad"
  default['sapcr']['SP5']['zip_name']     = "CRforVS_redist_install_64bit_13_0_5.zip"
  default['sapcr']['SP5']['package_name'] = "CRforVS_redist_install_64bit_13_0_5\\CRRuntime_64bit_13_0_5.msi"
else
  default['sapcr']['SP5']['url']          = "http://downloads.businessobjects.com/akdlm/cr4vs2010/CRforVS_redist_install_32bit_13_0_5.zip"
  default['sapcr']['SP5']['checksum']     = "a9dca4777ec9201d7b834c54ee02c5b9"
  default['sapcr']['SP5']['zip_name']     = "CRforVS_redist_install_32bit_13_0_5.zip"
  default['sapcr']['SP5']['package_name'] = "CRforVS_redist_install_32bit_13_0_5\\CRRuntime_32bit_13_0_5.msi"
end
