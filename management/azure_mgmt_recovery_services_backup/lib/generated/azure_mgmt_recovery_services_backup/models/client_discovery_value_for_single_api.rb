# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for
# license information.
#
# Code generated by Microsoft (R) AutoRest Code Generator 1.2.2.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::RecoveryServicesBackup
  module Models
    #
    # Available operation details.
    #
    class ClientDiscoveryValueForSingleApi

      include MsRestAzure

      include MsRest::JSONable
      # @return [String] Name
      attr_accessor :name

      # @return [ClientDiscoveryDisplay] Contains the localized display
      # information for this particular operation
      attr_accessor :display

      # @return [String] The intended executor of the operation;governs the
      # display of the operation in the RBAC UX and the audit logs UX
      attr_accessor :origin

      # @return [ClientDiscoveryForProperties] Properties
      attr_accessor :properties


      #
      # Mapper for ClientDiscoveryValueForSingleApi class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ClientDiscoveryValueForSingleApi',
          type: {
            name: 'Composite',
            class_name: 'ClientDiscoveryValueForSingleApi',
            model_properties: {
              name: {
                required: false,
                serialized_name: 'Name',
                type: {
                  name: 'String'
                }
              },
              display: {
                required: false,
                serialized_name: 'Display',
                type: {
                  name: 'Composite',
                  class_name: 'ClientDiscoveryDisplay'
                }
              },
              origin: {
                required: false,
                serialized_name: 'Origin',
                type: {
                  name: 'String'
                }
              },
              properties: {
                required: false,
                serialized_name: 'Properties',
                type: {
                  name: 'Composite',
                  class_name: 'ClientDiscoveryForProperties'
                }
              }
            }
          }
        }
      end
    end
  end
end
