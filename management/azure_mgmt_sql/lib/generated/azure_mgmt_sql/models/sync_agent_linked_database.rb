# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.2.2.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::SQL
  module Models
    #
    # An Azure SQL Database sync agent linked database.
    #
    class SyncAgentLinkedDatabase < ProxyResource

      include MsRestAzure

      include MsRest::JSONable
      # @return [SyncMemberDbType] Type of the sync agent linked database.
      # Possible values include: 'AzureSqlDatabase', 'SqlServerDatabase'
      attr_accessor :database_type

      # @return [String] Id of the sync agent linked database.
      attr_accessor :database_id

      # @return [String] Description of the sync agent linked database.
      attr_accessor :description

      # @return [String] Server name of the sync agent linked database.
      attr_accessor :server_name

      # @return [String] Database name of the sync agent linked database.
      attr_accessor :database_name

      # @return [String] User name of the sync agent linked database.
      attr_accessor :user_name


      #
      # Mapper for SyncAgentLinkedDatabase class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'SyncAgentLinkedDatabase',
          type: {
            name: 'Composite',
            class_name: 'SyncAgentLinkedDatabase',
            model_properties: {
              id: {
                required: false,
                read_only: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              name: {
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              type: {
                required: false,
                read_only: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              database_type: {
                required: false,
                read_only: true,
                serialized_name: 'properties.databaseType',
                type: {
                  name: 'String'
                }
              },
              database_id: {
                required: false,
                read_only: true,
                serialized_name: 'properties.databaseId',
                type: {
                  name: 'String'
                }
              },
              description: {
                required: false,
                read_only: true,
                serialized_name: 'properties.description',
                type: {
                  name: 'String'
                }
              },
              server_name: {
                required: false,
                read_only: true,
                serialized_name: 'properties.serverName',
                type: {
                  name: 'String'
                }
              },
              database_name: {
                required: false,
                read_only: true,
                serialized_name: 'properties.databaseName',
                type: {
                  name: 'String'
                }
              },
              user_name: {
                required: false,
                read_only: true,
                serialized_name: 'properties.userName',
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
