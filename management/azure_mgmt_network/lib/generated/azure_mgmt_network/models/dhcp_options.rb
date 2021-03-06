# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.2.2.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Network
  module Models
    #
    # DhcpOptions contains an array of DNS servers available to VMs deployed in
    # the virtual network. Standard DHCP option for a subnet overrides VNET
    # DHCP options.
    #
    class DhcpOptions

      include MsRestAzure

      include MsRest::JSONable
      # @return [Array<String>] The list of DNS servers IP addresses.
      attr_accessor :dns_servers


      #
      # Mapper for DhcpOptions class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'DhcpOptions',
          type: {
            name: 'Composite',
            class_name: 'DhcpOptions',
            model_properties: {
              dns_servers: {
                required: false,
                serialized_name: 'dnsServers',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              }
            }
          }
        }
      end
    end
  end
end
