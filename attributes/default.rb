default['textexpander']['appname'] = 'TextExpander.app'

if node['platform_version'].split('.')[1].to_i == 6
  default['textexpander']['version'] = '3.4.2'
  default['textexpander']['checksum'] = '87859d7efcbfe479e7b78686d4d3f9be9983b2c7d68a6122acea10d4efbb1bfa'
elsif node['platform_version'].split('.')[1].to_i > 6
  default['textexpander']['version'] = '4.3.6'
  default['textexpander']['checksum'] = 'ec90d6bd2e76bd14c0ca706d255c9673288f406b772e5ae6022e2dbe27848ee9'
else
  raise "Unsupported platform version #{node['platform_version']}. Please review the cookbook requirements."
end