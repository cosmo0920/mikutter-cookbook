#
# Cookbook Name:: mikutter
# Recipe:: mikutter::mikutter_git
#
# Copyright 2013, cosmo0920
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

include_recipe "rbenv::system"

git node['mikutter']['dir'] do
  user node['mikutter']['user']
  group node['mikutter']['group']
  repository node['mikutter']['repository']
  reference node['mikutter']['branch']
  action :sync
end

rbenv_script "install_dependent_gems" do
  user node['mikutter']['user']
  cwd node['mikutter']['dir']
  code <<-EOH
  bundle install --path vendor/bundle
  EOH
end
