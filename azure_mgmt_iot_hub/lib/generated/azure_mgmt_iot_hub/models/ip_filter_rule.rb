# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 0.17.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::IotHub
  module Models
    #
    # IP filter Rule
    #
    class IpFilterRule

      include MsRestAzure

      # @return [String] The name of the IP filter rule.
      attr_accessor :filter_name

      # @return [IpFilterActionType] The action desired - accept or reject.
      # Possible values include: 'Accept', 'Reject'
      attr_accessor :action

      # @return [String] A string containing the IPAddress/range in CIDR
      # notation.
      attr_accessor :ip_mask


      #
      # Mapper for IpFilterRule class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'IpFilterRule',
          type: {
            name: 'Composite',
            class_name: 'IpFilterRule',
            model_properties: {
              filter_name: {
                required: true,
                serialized_name: 'filterName',
                type: {
                  name: 'String'
                }
              },
              action: {
                required: true,
                serialized_name: 'action',
                type: {
                  name: 'Enum',
                  module: 'IpFilterActionType'
                }
              },
              ip_mask: {
                required: true,
                serialized_name: 'ipMask',
                type: {
                  name: 'String'
                }
              }
            }
          }
        }
      end
    end
  end
end
