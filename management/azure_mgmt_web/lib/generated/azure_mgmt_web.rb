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
require 'generated/azure_mgmt_web/module_definition'
require 'ms_rest_azure'

module Azure::ARM::Web
  autoload :AppServiceCertificateOrders,                        'generated/azure_mgmt_web/app_service_certificate_orders.rb'
  autoload :Domains,                                            'generated/azure_mgmt_web/domains.rb'
  autoload :TopLevelDomains,                                    'generated/azure_mgmt_web/top_level_domains.rb'
  autoload :Certificates,                                       'generated/azure_mgmt_web/certificates.rb'
  autoload :DeletedWebApps,                                     'generated/azure_mgmt_web/deleted_web_apps.rb'
  autoload :Provider,                                           'generated/azure_mgmt_web/provider.rb'
  autoload :Recommendations,                                    'generated/azure_mgmt_web/recommendations.rb'
  autoload :WebApps,                                            'generated/azure_mgmt_web/web_apps.rb'
  autoload :AppServiceEnvironments,                             'generated/azure_mgmt_web/app_service_environments.rb'
  autoload :AppServicePlans,                                    'generated/azure_mgmt_web/app_service_plans.rb'
  autoload :WebSiteManagementClient,                            'generated/azure_mgmt_web/web_site_management_client.rb'

  module Models
    autoload :BackupSchedule,                                     'generated/azure_mgmt_web/models/backup_schedule.rb'
    autoload :GeoRegionCollection,                                'generated/azure_mgmt_web/models/geo_region_collection.rb'
    autoload :CsmOperationCollection,                             'generated/azure_mgmt_web/models/csm_operation_collection.rb'
    autoload :AppServiceCertificateCollection,                    'generated/azure_mgmt_web/models/app_service_certificate_collection.rb'
    autoload :Recommendation,                                     'generated/azure_mgmt_web/models/recommendation.rb'
    autoload :ResourceMetricDefinitionCollection,                 'generated/azure_mgmt_web/models/resource_metric_definition_collection.rb'
    autoload :RecommendationRule,                                 'generated/azure_mgmt_web/models/recommendation_rule.rb'
    autoload :WebAppInstanceCollection,                           'generated/azure_mgmt_web/models/web_app_instance_collection.rb'
    autoload :Capability,                                         'generated/azure_mgmt_web/models/capability.rb'
    autoload :NameIdentifier,                                     'generated/azure_mgmt_web/models/name_identifier.rb'
    autoload :CsmMoveResourceEnvelope,                            'generated/azure_mgmt_web/models/csm_move_resource_envelope.rb'
    autoload :ResourceMetricAvailability,                         'generated/azure_mgmt_web/models/resource_metric_availability.rb'
    autoload :VirtualNetworkProfile,                              'generated/azure_mgmt_web/models/virtual_network_profile.rb'
    autoload :Resource,                                           'generated/azure_mgmt_web/models/resource.rb'
    autoload :PerfMonCounterCollection,                           'generated/azure_mgmt_web/models/perf_mon_counter_collection.rb'
    autoload :SiteSealRequest,                                    'generated/azure_mgmt_web/models/site_seal_request.rb'
    autoload :SkuCapacity,                                        'generated/azure_mgmt_web/models/sku_capacity.rb'
    autoload :Contact,                                            'generated/azure_mgmt_web/models/contact.rb'
    autoload :GlobalCsmSkuDescription,                            'generated/azure_mgmt_web/models/global_csm_sku_description.rb'
    autoload :DomainPurchaseConsent,                              'generated/azure_mgmt_web/models/domain_purchase_consent.rb'
    autoload :SiteConfigResourceCollection,                       'generated/azure_mgmt_web/models/site_config_resource_collection.rb'
    autoload :DomainAvailablilityCheckResult,                     'generated/azure_mgmt_web/models/domain_availablility_check_result.rb'
    autoload :PremierAddOnOfferCollection,                        'generated/azure_mgmt_web/models/premier_add_on_offer_collection.rb'
    autoload :DomainControlCenterSsoRequest,                      'generated/azure_mgmt_web/models/domain_control_center_sso_request.rb'
    autoload :ResourceNameAvailability,                           'generated/azure_mgmt_web/models/resource_name_availability.rb'
    autoload :DomainOwnershipIdentifierCollection,                'generated/azure_mgmt_web/models/domain_ownership_identifier_collection.rb'
    autoload :ResourceNameAvailabilityRequest,                    'generated/azure_mgmt_web/models/resource_name_availability_request.rb'
    autoload :NameIdentifierCollection,                           'generated/azure_mgmt_web/models/name_identifier_collection.rb'
    autoload :SkuInfos,                                           'generated/azure_mgmt_web/models/sku_infos.rb'
    autoload :TldLegalAgreementCollection,                        'generated/azure_mgmt_web/models/tld_legal_agreement_collection.rb'
    autoload :SiteCloneability,                                   'generated/azure_mgmt_web/models/site_cloneability.rb'
    autoload :TopLevelDomainAgreementOption,                      'generated/azure_mgmt_web/models/top_level_domain_agreement_option.rb'
    autoload :SourceControlCollection,                            'generated/azure_mgmt_web/models/source_control_collection.rb'
    autoload :HostingEnvironmentProfile,                          'generated/azure_mgmt_web/models/hosting_environment_profile.rb'
    autoload :SiteCloneabilityCriterion,                          'generated/azure_mgmt_web/models/site_cloneability_criterion.rb'
    autoload :CertificateCollection,                              'generated/azure_mgmt_web/models/certificate_collection.rb'
    autoload :ValidateRequest,                                    'generated/azure_mgmt_web/models/validate_request.rb'
    autoload :AutoHealCustomAction,                               'generated/azure_mgmt_web/models/auto_heal_custom_action.rb'
    autoload :ValidateResponseError,                              'generated/azure_mgmt_web/models/validate_response_error.rb'
    autoload :RequestsBasedTrigger,                               'generated/azure_mgmt_web/models/requests_based_trigger.rb'
    autoload :ValidateResponse,                                   'generated/azure_mgmt_web/models/validate_response.rb'
    autoload :SlowRequestsBasedTrigger,                           'generated/azure_mgmt_web/models/slow_requests_based_trigger.rb'
    autoload :SlotDifferenceCollection,                           'generated/azure_mgmt_web/models/slot_difference_collection.rb'
    autoload :AutoHealRules,                                      'generated/azure_mgmt_web/models/auto_heal_rules.rb'
    autoload :SnapshotCollection,                                 'generated/azure_mgmt_web/models/snapshot_collection.rb'
    autoload :ConnStringInfo,                                     'generated/azure_mgmt_web/models/conn_string_info.rb'
    autoload :SnapshotRecoveryTarget,                             'generated/azure_mgmt_web/models/snapshot_recovery_target.rb'
    autoload :HostNameSslState,                                   'generated/azure_mgmt_web/models/host_name_ssl_state.rb'
    autoload :FileSystemApplicationLogsConfig,                    'generated/azure_mgmt_web/models/file_system_application_logs_config.rb'
    autoload :SiteMachineKey,                                     'generated/azure_mgmt_web/models/site_machine_key.rb'
    autoload :AzureTableStorageApplicationLogsConfig,             'generated/azure_mgmt_web/models/azure_table_storage_application_logs_config.rb'
    autoload :VirtualDirectory,                                   'generated/azure_mgmt_web/models/virtual_directory.rb'
    autoload :AzureBlobStorageApplicationLogsConfig,              'generated/azure_mgmt_web/models/azure_blob_storage_application_logs_config.rb'
    autoload :RampUpRule,                                         'generated/azure_mgmt_web/models/ramp_up_rule.rb'
    autoload :ApplicationLogsConfig,                              'generated/azure_mgmt_web/models/application_logs_config.rb'
    autoload :SiteLimits,                                         'generated/azure_mgmt_web/models/site_limits.rb'
    autoload :AzureBlobStorageHttpLogsConfig,                     'generated/azure_mgmt_web/models/azure_blob_storage_http_logs_config.rb'
    autoload :IpSecurityRestriction,                              'generated/azure_mgmt_web/models/ip_security_restriction.rb'
    autoload :DatabaseBackupSetting,                              'generated/azure_mgmt_web/models/database_backup_setting.rb'
    autoload :SlotSwapStatus,                                     'generated/azure_mgmt_web/models/slot_swap_status.rb'
    autoload :WebAppCollection,                                   'generated/azure_mgmt_web/models/web_app_collection.rb'
    autoload :DeletedWebAppCollection,                            'generated/azure_mgmt_web/models/deleted_web_app_collection.rb'
    autoload :BackupItemCollection,                               'generated/azure_mgmt_web/models/backup_item_collection.rb'
    autoload :Dimension,                                          'generated/azure_mgmt_web/models/dimension.rb'
    autoload :AppServiceCertificate,                              'generated/azure_mgmt_web/models/app_service_certificate.rb'
    autoload :MetricSpecification,                                'generated/azure_mgmt_web/models/metric_specification.rb'
    autoload :CsmOperationDescriptionProperties,                  'generated/azure_mgmt_web/models/csm_operation_description_properties.rb'
    autoload :ConnStringValueTypePair,                            'generated/azure_mgmt_web/models/conn_string_value_type_pair.rb'
    autoload :CertificateDetails,                                 'generated/azure_mgmt_web/models/certificate_details.rb'
    autoload :ResourceCollection,                                 'generated/azure_mgmt_web/models/resource_collection.rb'
    autoload :ResourceMetricCollection,                           'generated/azure_mgmt_web/models/resource_metric_collection.rb'
    autoload :CsmPublishingProfileOptions,                        'generated/azure_mgmt_web/models/csm_publishing_profile_options.rb'
    autoload :ResourceMetric,                                     'generated/azure_mgmt_web/models/resource_metric.rb'
    autoload :CsmSlotEntity,                                      'generated/azure_mgmt_web/models/csm_slot_entity.rb'
    autoload :Address,                                            'generated/azure_mgmt_web/models/address.rb'
    autoload :LocalizableString,                                  'generated/azure_mgmt_web/models/localizable_string.rb'
    autoload :ResourceMetricValue,                                'generated/azure_mgmt_web/models/resource_metric_value.rb'
    autoload :CsmUsageQuota,                                      'generated/azure_mgmt_web/models/csm_usage_quota.rb'
    autoload :ResourceMetricProperty,                             'generated/azure_mgmt_web/models/resource_metric_property.rb'
    autoload :CsmUsageQuotaCollection,                            'generated/azure_mgmt_web/models/csm_usage_quota_collection.rb'
    autoload :TldLegalAgreement,                                  'generated/azure_mgmt_web/models/tld_legal_agreement.rb'
    autoload :ErrorEntity,                                        'generated/azure_mgmt_web/models/error_entity.rb'
    autoload :TopLevelDomainCollection,                           'generated/azure_mgmt_web/models/top_level_domain_collection.rb'
    autoload :HybridConnectionCollection,                         'generated/azure_mgmt_web/models/hybrid_connection_collection.rb'
    autoload :ApiDefinitionInfo,                                  'generated/azure_mgmt_web/models/api_definition_info.rb'
    autoload :WorkerPoolCollection,                               'generated/azure_mgmt_web/models/worker_pool_collection.rb'
    autoload :StatusCodesBasedTrigger,                            'generated/azure_mgmt_web/models/status_codes_based_trigger.rb'
    autoload :DeploymentCollection,                               'generated/azure_mgmt_web/models/deployment_collection.rb'
    autoload :CloningInfo,                                        'generated/azure_mgmt_web/models/cloning_info.rb'
    autoload :EnabledConfig,                                      'generated/azure_mgmt_web/models/enabled_config.rb'
    autoload :NameValuePair,                                      'generated/azure_mgmt_web/models/name_value_pair.rb'
    autoload :FileSystemHttpLogsConfig,                           'generated/azure_mgmt_web/models/file_system_http_logs_config.rb'
    autoload :VirtualApplication,                                 'generated/azure_mgmt_web/models/virtual_application.rb'
    autoload :UsageCollection,                                    'generated/azure_mgmt_web/models/usage_collection.rb'
    autoload :PublicCertificateCollection,                        'generated/azure_mgmt_web/models/public_certificate_collection.rb'
    autoload :HostNameBindingCollection,                          'generated/azure_mgmt_web/models/host_name_binding_collection.rb'
    autoload :AddressResponse,                                    'generated/azure_mgmt_web/models/address_response.rb'
    autoload :HttpLogsConfig,                                     'generated/azure_mgmt_web/models/http_logs_config.rb'
    autoload :MetricAvailability,                                 'generated/azure_mgmt_web/models/metric_availability.rb'
    autoload :StampCapacityCollection,                            'generated/azure_mgmt_web/models/stamp_capacity_collection.rb'
    autoload :CsmOperationDescription,                            'generated/azure_mgmt_web/models/csm_operation_description.rb'
    autoload :SkuInfoCollection,                                  'generated/azure_mgmt_web/models/sku_info_collection.rb'
    autoload :ProxyOnlyResource,                                  'generated/azure_mgmt_web/models/proxy_only_resource.rb'
    autoload :SkuInfo,                                            'generated/azure_mgmt_web/models/sku_info.rb'
    autoload :HostName,                                           'generated/azure_mgmt_web/models/host_name.rb'
    autoload :IdentifierCollection,                               'generated/azure_mgmt_web/models/identifier_collection.rb'
    autoload :DomainRecommendationSearchParameters,               'generated/azure_mgmt_web/models/domain_recommendation_search_parameters.rb'
    autoload :MetricAvailabilily,                                 'generated/azure_mgmt_web/models/metric_availabilily.rb'
    autoload :VirtualIPMapping,                                   'generated/azure_mgmt_web/models/virtual_ipmapping.rb'
    autoload :MSDeployLogEntry,                                   'generated/azure_mgmt_web/models/msdeploy_log_entry.rb'
    autoload :AutoHealTriggers,                                   'generated/azure_mgmt_web/models/auto_heal_triggers.rb'
    autoload :HostingEnvironmentDiagnostics,                      'generated/azure_mgmt_web/models/hosting_environment_diagnostics.rb'
    autoload :HandlerMapping,                                     'generated/azure_mgmt_web/models/handler_mapping.rb'
    autoload :AppServicePlanCollection,                           'generated/azure_mgmt_web/models/app_service_plan_collection.rb'
    autoload :SiteConfig,                                         'generated/azure_mgmt_web/models/site_config.rb'
    autoload :SkuDescription,                                     'generated/azure_mgmt_web/models/sku_description.rb'
    autoload :ServiceSpecification,                               'generated/azure_mgmt_web/models/service_specification.rb'
    autoload :AppServiceEnvironmentCollection,                    'generated/azure_mgmt_web/models/app_service_environment_collection.rb'
    autoload :SiteSeal,                                           'generated/azure_mgmt_web/models/site_seal.rb'
    autoload :AppServiceEnvironment,                              'generated/azure_mgmt_web/models/app_service_environment.rb'
    autoload :ResourceMetricName,                                 'generated/azure_mgmt_web/models/resource_metric_name.rb'
    autoload :NetworkAccessControlEntry,                          'generated/azure_mgmt_web/models/network_access_control_entry.rb'
    autoload :CorsSettings,                                       'generated/azure_mgmt_web/models/cors_settings.rb'
    autoload :StampCapacity,                                      'generated/azure_mgmt_web/models/stamp_capacity.rb'
    autoload :CsmOperationDisplay,                                'generated/azure_mgmt_web/models/csm_operation_display.rb'
    autoload :WorkerPool,                                         'generated/azure_mgmt_web/models/worker_pool.rb'
    autoload :DomainCollection,                                   'generated/azure_mgmt_web/models/domain_collection.rb'
    autoload :Operation,                                          'generated/azure_mgmt_web/models/operation.rb'
    autoload :Experiments,                                        'generated/azure_mgmt_web/models/experiments.rb'
    autoload :PerfMonSample,                                      'generated/azure_mgmt_web/models/perf_mon_sample.rb'
    autoload :AutoHealActions,                                    'generated/azure_mgmt_web/models/auto_heal_actions.rb'
    autoload :PerfMonSet,                                         'generated/azure_mgmt_web/models/perf_mon_set.rb'
    autoload :AppServiceCertificateOrderCollection,               'generated/azure_mgmt_web/models/app_service_certificate_order_collection.rb'
    autoload :PerfMonResponse,                                    'generated/azure_mgmt_web/models/perf_mon_response.rb'
    autoload :AppServiceCertificateResource,                      'generated/azure_mgmt_web/models/app_service_certificate_resource.rb'
    autoload :AppServiceCertificateOrder,                         'generated/azure_mgmt_web/models/app_service_certificate_order.rb'
    autoload :CertificateEmail,                                   'generated/azure_mgmt_web/models/certificate_email.rb'
    autoload :CertificateOrderAction,                             'generated/azure_mgmt_web/models/certificate_order_action.rb'
    autoload :ReissueCertificateOrderRequest,                     'generated/azure_mgmt_web/models/reissue_certificate_order_request.rb'
    autoload :RenewCertificateOrderRequest,                       'generated/azure_mgmt_web/models/renew_certificate_order_request.rb'
    autoload :Domain,                                             'generated/azure_mgmt_web/models/domain.rb'
    autoload :DomainOwnershipIdentifier,                          'generated/azure_mgmt_web/models/domain_ownership_identifier.rb'
    autoload :TopLevelDomain,                                     'generated/azure_mgmt_web/models/top_level_domain.rb'
    autoload :Certificate,                                        'generated/azure_mgmt_web/models/certificate.rb'
    autoload :PushSettings,                                       'generated/azure_mgmt_web/models/push_settings.rb'
    autoload :DeletedSite,                                        'generated/azure_mgmt_web/models/deleted_site.rb'
    autoload :GeoRegion,                                          'generated/azure_mgmt_web/models/geo_region.rb'
    autoload :PremierAddOnOffer,                                  'generated/azure_mgmt_web/models/premier_add_on_offer.rb'
    autoload :SourceControl,                                      'generated/azure_mgmt_web/models/source_control.rb'
    autoload :User,                                               'generated/azure_mgmt_web/models/user.rb'
    autoload :VnetParameters,                                     'generated/azure_mgmt_web/models/vnet_parameters.rb'
    autoload :VnetValidationTestFailure,                          'generated/azure_mgmt_web/models/vnet_validation_test_failure.rb'
    autoload :VnetValidationFailureDetails,                       'generated/azure_mgmt_web/models/vnet_validation_failure_details.rb'
    autoload :BackupItem,                                         'generated/azure_mgmt_web/models/backup_item.rb'
    autoload :BackupRequest,                                      'generated/azure_mgmt_web/models/backup_request.rb'
    autoload :ConnectionStringDictionary,                         'generated/azure_mgmt_web/models/connection_string_dictionary.rb'
    autoload :CustomHostnameAnalysisResult,                       'generated/azure_mgmt_web/models/custom_hostname_analysis_result.rb'
    autoload :Deployment,                                         'generated/azure_mgmt_web/models/deployment.rb'
    autoload :HostNameBinding,                                    'generated/azure_mgmt_web/models/host_name_binding.rb'
    autoload :HybridConnection,                                   'generated/azure_mgmt_web/models/hybrid_connection.rb'
    autoload :HybridConnectionKey,                                'generated/azure_mgmt_web/models/hybrid_connection_key.rb'
    autoload :Identifier,                                         'generated/azure_mgmt_web/models/identifier.rb'
    autoload :MSDeploy,                                           'generated/azure_mgmt_web/models/msdeploy.rb'
    autoload :MSDeployLog,                                        'generated/azure_mgmt_web/models/msdeploy_log.rb'
    autoload :MSDeployStatus,                                     'generated/azure_mgmt_web/models/msdeploy_status.rb'
    autoload :MigrateMySqlRequest,                                'generated/azure_mgmt_web/models/migrate_my_sql_request.rb'
    autoload :MigrateMySqlStatus,                                 'generated/azure_mgmt_web/models/migrate_my_sql_status.rb'
    autoload :VnetRoute,                                          'generated/azure_mgmt_web/models/vnet_route.rb'
    autoload :VnetInfo,                                           'generated/azure_mgmt_web/models/vnet_info.rb'
    autoload :RelayServiceConnectionEntity,                       'generated/azure_mgmt_web/models/relay_service_connection_entity.rb'
    autoload :NetworkFeatures,                                    'generated/azure_mgmt_web/models/network_features.rb'
    autoload :PremierAddOn,                                       'generated/azure_mgmt_web/models/premier_add_on.rb'
    autoload :PublicCertificate,                                  'generated/azure_mgmt_web/models/public_certificate.rb'
    autoload :RecoverResponse,                                    'generated/azure_mgmt_web/models/recover_response.rb'
    autoload :ResourceMetricDefinition,                           'generated/azure_mgmt_web/models/resource_metric_definition.rb'
    autoload :RestoreRequest,                                     'generated/azure_mgmt_web/models/restore_request.rb'
    autoload :RestoreResponse,                                    'generated/azure_mgmt_web/models/restore_response.rb'
    autoload :Site,                                               'generated/azure_mgmt_web/models/site.rb'
    autoload :SiteAuthSettings,                                   'generated/azure_mgmt_web/models/site_auth_settings.rb'
    autoload :SiteConfigResource,                                 'generated/azure_mgmt_web/models/site_config_resource.rb'
    autoload :SiteConfigurationSnapshotInfo,                      'generated/azure_mgmt_web/models/site_configuration_snapshot_info.rb'
    autoload :SiteInstance,                                       'generated/azure_mgmt_web/models/site_instance.rb'
    autoload :SiteLogsConfig,                                     'generated/azure_mgmt_web/models/site_logs_config.rb'
    autoload :SitePhpErrorLogFlag,                                'generated/azure_mgmt_web/models/site_php_error_log_flag.rb'
    autoload :SiteSourceControl,                                  'generated/azure_mgmt_web/models/site_source_control.rb'
    autoload :SlotConfigNamesResource,                            'generated/azure_mgmt_web/models/slot_config_names_resource.rb'
    autoload :SlotDifference,                                     'generated/azure_mgmt_web/models/slot_difference.rb'
    autoload :Snapshot,                                           'generated/azure_mgmt_web/models/snapshot.rb'
    autoload :SnapshotRecoveryRequest,                            'generated/azure_mgmt_web/models/snapshot_recovery_request.rb'
    autoload :StorageMigrationOptions,                            'generated/azure_mgmt_web/models/storage_migration_options.rb'
    autoload :StorageMigrationResponse,                           'generated/azure_mgmt_web/models/storage_migration_response.rb'
    autoload :StringDictionary,                                   'generated/azure_mgmt_web/models/string_dictionary.rb'
    autoload :VnetGateway,                                        'generated/azure_mgmt_web/models/vnet_gateway.rb'
    autoload :AppServiceEnvironmentResource,                      'generated/azure_mgmt_web/models/app_service_environment_resource.rb'
    autoload :AppServicePlan,                                     'generated/azure_mgmt_web/models/app_service_plan.rb'
    autoload :MetricDefinition,                                   'generated/azure_mgmt_web/models/metric_definition.rb'
    autoload :Usage,                                              'generated/azure_mgmt_web/models/usage.rb'
    autoload :WorkerPoolResource,                                 'generated/azure_mgmt_web/models/worker_pool_resource.rb'
    autoload :HybridConnectionLimits,                             'generated/azure_mgmt_web/models/hybrid_connection_limits.rb'
    autoload :KeyVaultSecretStatus,                               'generated/azure_mgmt_web/models/key_vault_secret_status.rb'
    autoload :CertificateProductType,                             'generated/azure_mgmt_web/models/certificate_product_type.rb'
    autoload :ProvisioningState,                                  'generated/azure_mgmt_web/models/provisioning_state.rb'
    autoload :CertificateOrderStatus,                             'generated/azure_mgmt_web/models/certificate_order_status.rb'
    autoload :CertificateOrderActionType,                         'generated/azure_mgmt_web/models/certificate_order_action_type.rb'
    autoload :DomainStatus,                                       'generated/azure_mgmt_web/models/domain_status.rb'
    autoload :AzureResourceType,                                  'generated/azure_mgmt_web/models/azure_resource_type.rb'
    autoload :CustomHostNameDnsRecordType,                        'generated/azure_mgmt_web/models/custom_host_name_dns_record_type.rb'
    autoload :HostNameType,                                       'generated/azure_mgmt_web/models/host_name_type.rb'
    autoload :DnsType,                                            'generated/azure_mgmt_web/models/dns_type.rb'
    autoload :DomainType,                                         'generated/azure_mgmt_web/models/domain_type.rb'
    autoload :AutoHealActionType,                                 'generated/azure_mgmt_web/models/auto_heal_action_type.rb'
    autoload :ConnectionStringType,                               'generated/azure_mgmt_web/models/connection_string_type.rb'
    autoload :UsageState,                                         'generated/azure_mgmt_web/models/usage_state.rb'
    autoload :SiteAvailabilityState,                              'generated/azure_mgmt_web/models/site_availability_state.rb'
    autoload :SslState,                                           'generated/azure_mgmt_web/models/ssl_state.rb'
    autoload :HostType,                                           'generated/azure_mgmt_web/models/host_type.rb'
    autoload :ScmType,                                            'generated/azure_mgmt_web/models/scm_type.rb'
    autoload :ManagedPipelineMode,                                'generated/azure_mgmt_web/models/managed_pipeline_mode.rb'
    autoload :SiteLoadBalancing,                                  'generated/azure_mgmt_web/models/site_load_balancing.rb'
    autoload :ResourceScopeType,                                  'generated/azure_mgmt_web/models/resource_scope_type.rb'
    autoload :NotificationLevel,                                  'generated/azure_mgmt_web/models/notification_level.rb'
    autoload :Channels,                                           'generated/azure_mgmt_web/models/channels.rb'
    autoload :AppServicePlanRestrictions,                         'generated/azure_mgmt_web/models/app_service_plan_restrictions.rb'
    autoload :InAvailabilityReasonType,                           'generated/azure_mgmt_web/models/in_availability_reason_type.rb'
    autoload :CheckNameResourceTypes,                             'generated/azure_mgmt_web/models/check_name_resource_types.rb'
    autoload :ValidateResourceTypes,                              'generated/azure_mgmt_web/models/validate_resource_types.rb'
    autoload :LogLevel,                                           'generated/azure_mgmt_web/models/log_level.rb'
    autoload :BackupItemStatus,                                   'generated/azure_mgmt_web/models/backup_item_status.rb'
    autoload :DatabaseType,                                       'generated/azure_mgmt_web/models/database_type.rb'
    autoload :FrequencyUnit,                                      'generated/azure_mgmt_web/models/frequency_unit.rb'
    autoload :BackupRestoreOperationType,                         'generated/azure_mgmt_web/models/backup_restore_operation_type.rb'
    autoload :PublishingProfileFormat,                            'generated/azure_mgmt_web/models/publishing_profile_format.rb'
    autoload :DnsVerificationTestResult,                          'generated/azure_mgmt_web/models/dns_verification_test_result.rb'
    autoload :MSDeployLogEntryType,                               'generated/azure_mgmt_web/models/msdeploy_log_entry_type.rb'
    autoload :MSDeployProvisioningState,                          'generated/azure_mgmt_web/models/msdeploy_provisioning_state.rb'
    autoload :MySqlMigrationType,                                 'generated/azure_mgmt_web/models/my_sql_migration_type.rb'
    autoload :OperationStatus,                                    'generated/azure_mgmt_web/models/operation_status.rb'
    autoload :RouteType,                                          'generated/azure_mgmt_web/models/route_type.rb'
    autoload :PublicCertificateLocation,                          'generated/azure_mgmt_web/models/public_certificate_location.rb'
    autoload :UnauthenticatedClientAction,                        'generated/azure_mgmt_web/models/unauthenticated_client_action.rb'
    autoload :BuiltInAuthenticationProvider,                      'generated/azure_mgmt_web/models/built_in_authentication_provider.rb'
    autoload :CloneAbilityResult,                                 'generated/azure_mgmt_web/models/clone_ability_result.rb'
    autoload :HostingEnvironmentStatus,                           'generated/azure_mgmt_web/models/hosting_environment_status.rb'
    autoload :InternalLoadBalancingMode,                          'generated/azure_mgmt_web/models/internal_load_balancing_mode.rb'
    autoload :ComputeModeOptions,                                 'generated/azure_mgmt_web/models/compute_mode_options.rb'
    autoload :WorkerSizeOptions,                                  'generated/azure_mgmt_web/models/worker_size_options.rb'
    autoload :AccessControlEntryAction,                           'generated/azure_mgmt_web/models/access_control_entry_action.rb'
    autoload :StatusOptions,                                      'generated/azure_mgmt_web/models/status_options.rb'
    autoload :SkuName,                                            'generated/azure_mgmt_web/models/sku_name.rb'
  end
end
