require 'json_openstack'
module Puppet::CloudPack
    class << self
    def create_connection(options)
       api = OpenStackAPI.new
       api.username  = options[:identity_username]
       api.password  = options[:identity_password]
       api.nova_port = options[:nova_port]
       api.nova_host = options[:nova_host]
       api.keystone_port  = options[:keystone_port]
       api.keystone_host  = options[:keystone_host]
       api.tenant_name    = options[:tenant_name]
       api.image_name     = options[:image_name] 
       api.flavor_name    = options[:flavor_name] 
       api.security_group = options[:security_group]
       api.connect
       return api
    end
end
