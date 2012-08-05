require 'puppet/face'

Puppet::Face.define(:node_openstack, '0.0.2') do
  copyright "Puppet Labs", 2011
  license   "Apache 2 license; see COPYING"

  option '--identity_username=' do
    summary 'Open stack username'
    description <<-EOT
      Username to use with the Identity API
      used to create an authentication token
    EOT
    required
  end

  option '--identity_password=' do
    summary 'Open stack password'
    description <<-EOT
      Password to use with the Identity API
      used to create an authentication token
    EOT
    required
  end

  option '--nova_port=' do
    summary 'Nova compute port'
    description <<-EOT
      The nova computer API port
      defaults to 8774
    EOT
    default_to { '8774' }
  end

  option '--nova_host=' do
    summary 'The nova compute host'
    description <<-EOT
      The hostname or IP address of the nova compute host
    EOT
    required
  end

  option '--keystone_host=' do
    summary 'The keystone indentity api host'
    description <<-EOT
      The hostname or IP address of the keystone indentity host
    EOT
    required
  end

  option '--keystone_port=' do
    summary 'Open stack password'
    description <<-EOT
      Password to use with the Identity API
      used to create an authentication token
    EOT
    default_to { '5000' }
  end

  option '--tenant_name=' do
    summary 'Tenant / Group name'
    description <<-EOT
      The name of the tenant (group) name to use
    EOT
   required
  end

  option '--security_group=' do
    summary 'Security Group'
    description <<-EOT
      The name of the  flavor to create the instance with
    EOT
    default_to { 'default' } 
  end 
 
  summary "View and manage openstack nodes."
  description <<-'EOT'
    This subcommand provides a command line interface to manage Openstack
    machine instances. The goal of these actions is to easily create new
    machine and tear them down when they're no longer
    required.
  EOT
end
