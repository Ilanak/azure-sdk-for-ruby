# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.2.2.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

require 'uri'
require 'cgi'
require 'date'
require 'json'
require 'base64'
require 'erb'
require 'securerandom'
require 'time'
require 'timeliness'
require 'faraday'
require 'faraday-cookie_jar'
require 'concurrent'
require 'ms_rest'
require 'generated/azure_mgmt_sql/module_definition'
require 'ms_rest_azure'

module Azure::ARM::SQL
  autoload :BackupLongTermRetentionPolicies,                    'generated/azure_mgmt_sql/backup_long_term_retention_policies.rb'
  autoload :BackupLongTermRetentionVaults,                      'generated/azure_mgmt_sql/backup_long_term_retention_vaults.rb'
  autoload :RestorePoints,                                      'generated/azure_mgmt_sql/restore_points.rb'
  autoload :RecoverableDatabases,                               'generated/azure_mgmt_sql/recoverable_databases.rb'
  autoload :RestorableDroppedDatabases,                         'generated/azure_mgmt_sql/restorable_dropped_databases.rb'
  autoload :Capabilities,                                       'generated/azure_mgmt_sql/capabilities.rb'
  autoload :ServerConnectionPolicies,                           'generated/azure_mgmt_sql/server_connection_policies.rb'
  autoload :DatabaseThreatDetectionPolicies,                    'generated/azure_mgmt_sql/database_threat_detection_policies.rb'
  autoload :DataMaskingPolicies,                                'generated/azure_mgmt_sql/data_masking_policies.rb'
  autoload :DataMaskingRules,                                   'generated/azure_mgmt_sql/data_masking_rules.rb'
  autoload :FirewallRules,                                      'generated/azure_mgmt_sql/firewall_rules.rb'
  autoload :GeoBackupPolicies,                                  'generated/azure_mgmt_sql/geo_backup_policies.rb'
  autoload :Databases,                                          'generated/azure_mgmt_sql/databases.rb'
  autoload :ElasticPools,                                       'generated/azure_mgmt_sql/elastic_pools.rb'
  autoload :ReplicationLinks,                                   'generated/azure_mgmt_sql/replication_links.rb'
  autoload :ServerAzureADAdministrators,                        'generated/azure_mgmt_sql/server_azure_adadministrators.rb'
  autoload :ServerCommunicationLinks,                           'generated/azure_mgmt_sql/server_communication_links.rb'
  autoload :ServiceObjectives,                                  'generated/azure_mgmt_sql/service_objectives.rb'
  autoload :Servers,                                            'generated/azure_mgmt_sql/servers.rb'
  autoload :ElasticPoolActivities,                              'generated/azure_mgmt_sql/elastic_pool_activities.rb'
  autoload :ElasticPoolDatabaseActivities,                      'generated/azure_mgmt_sql/elastic_pool_database_activities.rb'
  autoload :RecommendedElasticPools,                            'generated/azure_mgmt_sql/recommended_elastic_pools.rb'
  autoload :ServiceTierAdvisors,                                'generated/azure_mgmt_sql/service_tier_advisors.rb'
  autoload :TransparentDataEncryptions,                         'generated/azure_mgmt_sql/transparent_data_encryptions.rb'
  autoload :TransparentDataEncryptionActivities,                'generated/azure_mgmt_sql/transparent_data_encryption_activities.rb'
  autoload :ServerUsages,                                       'generated/azure_mgmt_sql/server_usages.rb'
  autoload :DatabaseUsages,                                     'generated/azure_mgmt_sql/database_usages.rb'
  autoload :DatabaseBlobAuditingPolicies,                       'generated/azure_mgmt_sql/database_blob_auditing_policies.rb'
  autoload :EncryptionProtectors,                               'generated/azure_mgmt_sql/encryption_protectors.rb'
  autoload :FailoverGroups,                                     'generated/azure_mgmt_sql/failover_groups.rb'
  autoload :Operations,                                         'generated/azure_mgmt_sql/operations.rb'
  autoload :ServerKeys,                                         'generated/azure_mgmt_sql/server_keys.rb'
  autoload :SyncAgents,                                         'generated/azure_mgmt_sql/sync_agents.rb'
  autoload :SyncGroups,                                         'generated/azure_mgmt_sql/sync_groups.rb'
  autoload :SyncMembers,                                        'generated/azure_mgmt_sql/sync_members.rb'
  autoload :VirtualNetworkRules,                                'generated/azure_mgmt_sql/virtual_network_rules.rb'
  autoload :SqlManagementClient,                                'generated/azure_mgmt_sql/sql_management_client.rb'

  module Models
    autoload :RecommendedElasticPoolListResult,                   'generated/azure_mgmt_sql/models/recommended_elastic_pool_list_result.rb'
    autoload :RecommendedElasticPoolListMetricsResult,            'generated/azure_mgmt_sql/models/recommended_elastic_pool_list_metrics_result.rb'
    autoload :SyncDatabaseIdListResult,                           'generated/azure_mgmt_sql/models/sync_database_id_list_result.rb'
    autoload :ReplicationLinkListResult,                          'generated/azure_mgmt_sql/models/replication_link_list_result.rb'
    autoload :SyncMemberListResult,                               'generated/azure_mgmt_sql/models/sync_member_list_result.rb'
    autoload :SyncDatabaseIdProperties,                           'generated/azure_mgmt_sql/models/sync_database_id_properties.rb'
    autoload :SyncGroupListResult,                                'generated/azure_mgmt_sql/models/sync_group_list_result.rb'
    autoload :ServerAdministratorListResult,                      'generated/azure_mgmt_sql/models/server_administrator_list_result.rb'
    autoload :SyncGroupSchema,                                    'generated/azure_mgmt_sql/models/sync_group_schema.rb'
    autoload :SyncAgentLinkedDatabaseListResult,                  'generated/azure_mgmt_sql/models/sync_agent_linked_database_list_result.rb'
    autoload :MaxSizeCapability,                                  'generated/azure_mgmt_sql/models/max_size_capability.rb'
    autoload :ServerCommunicationLinkListResult,                  'generated/azure_mgmt_sql/models/server_communication_link_list_result.rb'
    autoload :EditionCapability,                                  'generated/azure_mgmt_sql/models/edition_capability.rb'
    autoload :SyncAgentKeyProperties,                             'generated/azure_mgmt_sql/models/sync_agent_key_properties.rb'
    autoload :ElasticPoolPerDatabaseMaxDtuCapability,             'generated/azure_mgmt_sql/models/elastic_pool_per_database_max_dtu_capability.rb'
    autoload :ServiceObjectiveListResult,                         'generated/azure_mgmt_sql/models/service_objective_list_result.rb'
    autoload :ElasticPoolEditionCapability,                       'generated/azure_mgmt_sql/models/elastic_pool_edition_capability.rb'
    autoload :CheckNameAvailabilityRequest,                       'generated/azure_mgmt_sql/models/check_name_availability_request.rb'
    autoload :LocationCapabilities,                               'generated/azure_mgmt_sql/models/location_capabilities.rb'
    autoload :CheckNameAvailabilityResponse,                      'generated/azure_mgmt_sql/models/check_name_availability_response.rb'
    autoload :SyncGroupSchemaTableColumn,                         'generated/azure_mgmt_sql/models/sync_group_schema_table_column.rb'
    autoload :RecommendedElasticPoolMetric,                       'generated/azure_mgmt_sql/models/recommended_elastic_pool_metric.rb'
    autoload :SyncGroupLogProperties,                             'generated/azure_mgmt_sql/models/sync_group_log_properties.rb'
    autoload :SloUsageMetric,                                     'generated/azure_mgmt_sql/models/slo_usage_metric.rb'
    autoload :SyncFullSchemaPropertiesListResult,                 'generated/azure_mgmt_sql/models/sync_full_schema_properties_list_result.rb'
    autoload :SyncAgentListResult,                                'generated/azure_mgmt_sql/models/sync_agent_list_result.rb'
    autoload :SyncFullSchemaProperties,                           'generated/azure_mgmt_sql/models/sync_full_schema_properties.rb'
    autoload :ServerUpdate,                                       'generated/azure_mgmt_sql/models/server_update.rb'
    autoload :ImportExtensionRequest,                             'generated/azure_mgmt_sql/models/import_extension_request.rb'
    autoload :OperationImpact,                                    'generated/azure_mgmt_sql/models/operation_impact.rb'
    autoload :SyncFullSchemaTableColumn,                          'generated/azure_mgmt_sql/models/sync_full_schema_table_column.rb'
    autoload :ServerListResult,                                   'generated/azure_mgmt_sql/models/server_list_result.rb'
    autoload :MetricValue,                                        'generated/azure_mgmt_sql/models/metric_value.rb'
    autoload :ResourceIdentity,                                   'generated/azure_mgmt_sql/models/resource_identity.rb'
    autoload :Metric,                                             'generated/azure_mgmt_sql/models/metric.rb'
    autoload :ServerKeyListResult,                                'generated/azure_mgmt_sql/models/server_key_list_result.rb'
    autoload :MetricAvailability,                                 'generated/azure_mgmt_sql/models/metric_availability.rb'
    autoload :MetricDefinition,                                   'generated/azure_mgmt_sql/models/metric_definition.rb'
    autoload :EncryptionProtectorListResult,                      'generated/azure_mgmt_sql/models/encryption_protector_list_result.rb'
    autoload :VirtualNetworkRuleListResult,                       'generated/azure_mgmt_sql/models/virtual_network_rule_list_result.rb'
    autoload :OperationListResult,                                'generated/azure_mgmt_sql/models/operation_list_result.rb'
    autoload :RecoverableDatabaseListResult,                      'generated/azure_mgmt_sql/models/recoverable_database_list_result.rb'
    autoload :Operation,                                          'generated/azure_mgmt_sql/models/operation.rb'
    autoload :ServiceObjectiveCapability,                         'generated/azure_mgmt_sql/models/service_objective_capability.rb'
    autoload :OperationDisplay,                                   'generated/azure_mgmt_sql/models/operation_display.rb'
    autoload :ElasticPoolDtuCapability,                           'generated/azure_mgmt_sql/models/elastic_pool_dtu_capability.rb'
    autoload :ElasticPoolListResult,                              'generated/azure_mgmt_sql/models/elastic_pool_list_result.rb'
    autoload :SyncGroupSchemaTable,                               'generated/azure_mgmt_sql/models/sync_group_schema_table.rb'
    autoload :FailoverGroupListResult,                            'generated/azure_mgmt_sql/models/failover_group_list_result.rb'
    autoload :DataMaskingRuleListResult,                          'generated/azure_mgmt_sql/models/data_masking_rule_list_result.rb'
    autoload :ElasticPoolActivityListResult,                      'generated/azure_mgmt_sql/models/elastic_pool_activity_list_result.rb'
    autoload :GeoBackupPolicyListResult,                          'generated/azure_mgmt_sql/models/geo_backup_policy_list_result.rb'
    autoload :FailoverGroupUpdate,                                'generated/azure_mgmt_sql/models/failover_group_update.rb'
    autoload :ExportRequest,                                      'generated/azure_mgmt_sql/models/export_request.rb'
    autoload :ElasticPoolDatabaseActivityListResult,              'generated/azure_mgmt_sql/models/elastic_pool_database_activity_list_result.rb'
    autoload :MetricListResult,                                   'generated/azure_mgmt_sql/models/metric_list_result.rb'
    autoload :PartnerInfo,                                        'generated/azure_mgmt_sql/models/partner_info.rb'
    autoload :RestorePointListResult,                             'generated/azure_mgmt_sql/models/restore_point_list_result.rb'
    autoload :DatabaseListResult,                                 'generated/azure_mgmt_sql/models/database_list_result.rb'
    autoload :ElasticPoolPerDatabaseMinDtuCapability,             'generated/azure_mgmt_sql/models/elastic_pool_per_database_min_dtu_capability.rb'
    autoload :ServiceTierAdvisorListResult,                       'generated/azure_mgmt_sql/models/service_tier_advisor_list_result.rb'
    autoload :SyncGroupLogListResult,                             'generated/azure_mgmt_sql/models/sync_group_log_list_result.rb'
    autoload :FailoverGroupReadOnlyEndpoint,                      'generated/azure_mgmt_sql/models/failover_group_read_only_endpoint.rb'
    autoload :SyncFullSchemaTable,                                'generated/azure_mgmt_sql/models/sync_full_schema_table.rb'
    autoload :TransparentDataEncryptionActivityListResult,        'generated/azure_mgmt_sql/models/transparent_data_encryption_activity_list_result.rb'
    autoload :MetricDefinitionListResult,                         'generated/azure_mgmt_sql/models/metric_definition_list_result.rb'
    autoload :ServerUsage,                                        'generated/azure_mgmt_sql/models/server_usage.rb'
    autoload :ServerVersionCapability,                            'generated/azure_mgmt_sql/models/server_version_capability.rb'
    autoload :ServerUsageListResult,                              'generated/azure_mgmt_sql/models/server_usage_list_result.rb'
    autoload :MetricName,                                         'generated/azure_mgmt_sql/models/metric_name.rb'
    autoload :DatabaseUsage,                                      'generated/azure_mgmt_sql/models/database_usage.rb'
    autoload :FirewallRuleListResult,                             'generated/azure_mgmt_sql/models/firewall_rule_list_result.rb'
    autoload :DatabaseUsageListResult,                            'generated/azure_mgmt_sql/models/database_usage_list_result.rb'
    autoload :RestorableDroppedDatabaseListResult,                'generated/azure_mgmt_sql/models/restorable_dropped_database_list_result.rb'
    autoload :FailoverGroupReadWriteEndpoint,                     'generated/azure_mgmt_sql/models/failover_group_read_write_endpoint.rb'
    autoload :ProxyResource,                                      'generated/azure_mgmt_sql/models/proxy_resource.rb'
    autoload :BackupLongTermRetentionPolicy,                      'generated/azure_mgmt_sql/models/backup_long_term_retention_policy.rb'
    autoload :BackupLongTermRetentionVault,                       'generated/azure_mgmt_sql/models/backup_long_term_retention_vault.rb'
    autoload :TrackedResource,                                    'generated/azure_mgmt_sql/models/tracked_resource.rb'
    autoload :RestorePoint,                                       'generated/azure_mgmt_sql/models/restore_point.rb'
    autoload :RecoverableDatabase,                                'generated/azure_mgmt_sql/models/recoverable_database.rb'
    autoload :RestorableDroppedDatabase,                          'generated/azure_mgmt_sql/models/restorable_dropped_database.rb'
    autoload :ServerConnectionPolicy,                             'generated/azure_mgmt_sql/models/server_connection_policy.rb'
    autoload :DatabaseSecurityAlertPolicy,                        'generated/azure_mgmt_sql/models/database_security_alert_policy.rb'
    autoload :DataMaskingPolicy,                                  'generated/azure_mgmt_sql/models/data_masking_policy.rb'
    autoload :DataMaskingRule,                                    'generated/azure_mgmt_sql/models/data_masking_rule.rb'
    autoload :FirewallRule,                                       'generated/azure_mgmt_sql/models/firewall_rule.rb'
    autoload :GeoBackupPolicy,                                    'generated/azure_mgmt_sql/models/geo_backup_policy.rb'
    autoload :ImportExportResponse,                               'generated/azure_mgmt_sql/models/import_export_response.rb'
    autoload :ImportRequest,                                      'generated/azure_mgmt_sql/models/import_request.rb'
    autoload :ReplicationLink,                                    'generated/azure_mgmt_sql/models/replication_link.rb'
    autoload :ServerAzureADAdministrator,                         'generated/azure_mgmt_sql/models/server_azure_adadministrator.rb'
    autoload :ServerCommunicationLink,                            'generated/azure_mgmt_sql/models/server_communication_link.rb'
    autoload :ServiceObjective,                                   'generated/azure_mgmt_sql/models/service_objective.rb'
    autoload :ServiceTierAdvisor,                                 'generated/azure_mgmt_sql/models/service_tier_advisor.rb'
    autoload :TransparentDataEncryption,                          'generated/azure_mgmt_sql/models/transparent_data_encryption.rb'
    autoload :RecommendedIndex,                                   'generated/azure_mgmt_sql/models/recommended_index.rb'
    autoload :Database,                                           'generated/azure_mgmt_sql/models/database.rb'
    autoload :RecommendedElasticPool,                             'generated/azure_mgmt_sql/models/recommended_elastic_pool.rb'
    autoload :ElasticPool,                                        'generated/azure_mgmt_sql/models/elastic_pool.rb'
    autoload :ElasticPoolUpdate,                                  'generated/azure_mgmt_sql/models/elastic_pool_update.rb'
    autoload :ElasticPoolActivity,                                'generated/azure_mgmt_sql/models/elastic_pool_activity.rb'
    autoload :ElasticPoolDatabaseActivity,                        'generated/azure_mgmt_sql/models/elastic_pool_database_activity.rb'
    autoload :DatabaseUpdate,                                     'generated/azure_mgmt_sql/models/database_update.rb'
    autoload :TransparentDataEncryptionActivity,                  'generated/azure_mgmt_sql/models/transparent_data_encryption_activity.rb'
    autoload :DatabaseBlobAuditingPolicy,                         'generated/azure_mgmt_sql/models/database_blob_auditing_policy.rb'
    autoload :EncryptionProtector,                                'generated/azure_mgmt_sql/models/encryption_protector.rb'
    autoload :FailoverGroup,                                      'generated/azure_mgmt_sql/models/failover_group.rb'
    autoload :ServerKey,                                          'generated/azure_mgmt_sql/models/server_key.rb'
    autoload :Server,                                             'generated/azure_mgmt_sql/models/server.rb'
    autoload :SyncAgent,                                          'generated/azure_mgmt_sql/models/sync_agent.rb'
    autoload :SyncAgentLinkedDatabase,                            'generated/azure_mgmt_sql/models/sync_agent_linked_database.rb'
    autoload :SyncGroup,                                          'generated/azure_mgmt_sql/models/sync_group.rb'
    autoload :SyncMember,                                         'generated/azure_mgmt_sql/models/sync_member.rb'
    autoload :VirtualNetworkRule,                                 'generated/azure_mgmt_sql/models/virtual_network_rule.rb'
    autoload :BackupLongTermRetentionPolicyState,                 'generated/azure_mgmt_sql/models/backup_long_term_retention_policy_state.rb'
    autoload :RestorePointType,                                   'generated/azure_mgmt_sql/models/restore_point_type.rb'
    autoload :CapabilityStatus,                                   'generated/azure_mgmt_sql/models/capability_status.rb'
    autoload :MaxSizeUnits,                                       'generated/azure_mgmt_sql/models/max_size_units.rb'
    autoload :PerformanceLevelUnit,                               'generated/azure_mgmt_sql/models/performance_level_unit.rb'
    autoload :ServerConnectionType,                               'generated/azure_mgmt_sql/models/server_connection_type.rb'
    autoload :SecurityAlertPolicyState,                           'generated/azure_mgmt_sql/models/security_alert_policy_state.rb'
    autoload :SecurityAlertPolicyEmailAccountAdmins,              'generated/azure_mgmt_sql/models/security_alert_policy_email_account_admins.rb'
    autoload :SecurityAlertPolicyUseServerDefault,                'generated/azure_mgmt_sql/models/security_alert_policy_use_server_default.rb'
    autoload :DataMaskingState,                                   'generated/azure_mgmt_sql/models/data_masking_state.rb'
    autoload :DataMaskingRuleState,                               'generated/azure_mgmt_sql/models/data_masking_rule_state.rb'
    autoload :DataMaskingFunction,                                'generated/azure_mgmt_sql/models/data_masking_function.rb'
    autoload :GeoBackupPolicyState,                               'generated/azure_mgmt_sql/models/geo_backup_policy_state.rb'
    autoload :DatabaseEdition,                                    'generated/azure_mgmt_sql/models/database_edition.rb'
    autoload :ServiceObjectiveName,                               'generated/azure_mgmt_sql/models/service_objective_name.rb'
    autoload :StorageKeyType,                                     'generated/azure_mgmt_sql/models/storage_key_type.rb'
    autoload :AuthenticationType,                                 'generated/azure_mgmt_sql/models/authentication_type.rb'
    autoload :UnitType,                                           'generated/azure_mgmt_sql/models/unit_type.rb'
    autoload :PrimaryAggregationType,                             'generated/azure_mgmt_sql/models/primary_aggregation_type.rb'
    autoload :UnitDefinitionType,                                 'generated/azure_mgmt_sql/models/unit_definition_type.rb'
    autoload :ReplicationRole,                                    'generated/azure_mgmt_sql/models/replication_role.rb'
    autoload :ReplicationState,                                   'generated/azure_mgmt_sql/models/replication_state.rb'
    autoload :CheckNameAvailabilityReason,                        'generated/azure_mgmt_sql/models/check_name_availability_reason.rb'
    autoload :ElasticPoolEdition,                                 'generated/azure_mgmt_sql/models/elastic_pool_edition.rb'
    autoload :CreateMode,                                         'generated/azure_mgmt_sql/models/create_mode.rb'
    autoload :TransparentDataEncryptionStatus,                    'generated/azure_mgmt_sql/models/transparent_data_encryption_status.rb'
    autoload :RecommendedIndexAction,                             'generated/azure_mgmt_sql/models/recommended_index_action.rb'
    autoload :RecommendedIndexState,                              'generated/azure_mgmt_sql/models/recommended_index_state.rb'
    autoload :RecommendedIndexType,                               'generated/azure_mgmt_sql/models/recommended_index_type.rb'
    autoload :ReadScale,                                          'generated/azure_mgmt_sql/models/read_scale.rb'
    autoload :SampleName,                                         'generated/azure_mgmt_sql/models/sample_name.rb'
    autoload :ElasticPoolState,                                   'generated/azure_mgmt_sql/models/elastic_pool_state.rb'
    autoload :TransparentDataEncryptionActivityStatus,            'generated/azure_mgmt_sql/models/transparent_data_encryption_activity_status.rb'
    autoload :BlobAuditingPolicyState,                            'generated/azure_mgmt_sql/models/blob_auditing_policy_state.rb'
    autoload :ServerKeyType,                                      'generated/azure_mgmt_sql/models/server_key_type.rb'
    autoload :ReadWriteEndpointFailoverPolicy,                    'generated/azure_mgmt_sql/models/read_write_endpoint_failover_policy.rb'
    autoload :ReadOnlyEndpointFailoverPolicy,                     'generated/azure_mgmt_sql/models/read_only_endpoint_failover_policy.rb'
    autoload :FailoverGroupReplicationRole,                       'generated/azure_mgmt_sql/models/failover_group_replication_role.rb'
    autoload :OperationOrigin,                                    'generated/azure_mgmt_sql/models/operation_origin.rb'
    autoload :IdentityType,                                       'generated/azure_mgmt_sql/models/identity_type.rb'
    autoload :SyncAgentState,                                     'generated/azure_mgmt_sql/models/sync_agent_state.rb'
    autoload :SyncMemberDbType,                                   'generated/azure_mgmt_sql/models/sync_member_db_type.rb'
    autoload :SyncGroupLogType,                                   'generated/azure_mgmt_sql/models/sync_group_log_type.rb'
    autoload :SyncConflictResolutionPolicy,                       'generated/azure_mgmt_sql/models/sync_conflict_resolution_policy.rb'
    autoload :SyncGroupState,                                     'generated/azure_mgmt_sql/models/sync_group_state.rb'
    autoload :SyncDirection,                                      'generated/azure_mgmt_sql/models/sync_direction.rb'
    autoload :SyncMemberState,                                    'generated/azure_mgmt_sql/models/sync_member_state.rb'
  end
end
