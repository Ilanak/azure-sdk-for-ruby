# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.2.2.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::EventHub
  module Models
    #
    # The Result of the CheckNameAvailability operation
    #
    class CheckNameAvailabilityResult

      include MsRestAzure

      include MsRest::JSONable
      # @return [String] The detailed info regarding the reason associated with
      # the Namespace.
      attr_accessor :message

      # @return [Boolean] Value indicating Namespace is availability, true if
      # the Namespace is available; otherwise, false.
      attr_accessor :name_available

      # @return [UnavailableReason] The reason for unavailability of a
      # Namespace. Possible values include: 'None', 'InvalidName',
      # 'SubscriptionIsDisabled', 'NameInUse', 'NameInLockdown',
      # 'TooManyNamespaceInCurrentSubscription'
      attr_accessor :reason


      #
      # Mapper for CheckNameAvailabilityResult class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'CheckNameAvailabilityResult',
          type: {
            name: 'Composite',
            class_name: 'CheckNameAvailabilityResult',
            model_properties: {
              message: {
                required: false,
                read_only: true,
                serialized_name: 'message',
                type: {
                  name: 'String'
                }
              },
              name_available: {
                required: false,
                serialized_name: 'nameAvailable',
                type: {
                  name: 'Boolean'
                }
              },
              reason: {
                required: false,
                serialized_name: 'reason',
                type: {
                  name: 'Enum',
                  module: 'UnavailableReason'
                }
              }
            }
          }
        }
      end
    end
  end
end
