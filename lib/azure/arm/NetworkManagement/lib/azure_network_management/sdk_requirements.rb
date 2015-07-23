# Code generated by Microsoft (R) AutoRest Code Generator 0.11.0.0
# Changes may cause incorrect behavior and will be lost if the code is


require 'uri'
require 'cgi'
require 'date'
require 'json'
require 'base64'
require 'ERB'
require 'securerandom'
require 'time'
require 'timeliness'
require 'concurrent'
require 'ms_rest'
require 'ms_rest_azure'

require_relative 'models/application_gateway_sku.rb'
require_relative 'models/application_gateway_ip_configuration_properties_format.rb'
require_relative 'models/application_gateway_ssl_certificate_properties_format.rb'
require_relative 'models/application_gateway_frontend_ip_configuration_properties_format.rb'
require_relative 'models/application_gateway_frontend_port_properties_format.rb'
require_relative 'models/application_gateway_backend_address.rb'
require_relative 'models/application_gateway_backend_address_pool_properties_format.rb'
require_relative 'models/application_gateway_backend_http_settings_properties_format.rb'
require_relative 'models/application_gateway_http_listener_properties_format.rb'
require_relative 'models/application_gateway_request_routing_rule_properties_format.rb'
require_relative 'models/application_gateway_properties_format.rb'
require_relative 'models/application_gateway_list_result.rb'
require_relative 'models/frontend_ip_configuration_properties_format.rb'
require_relative 'models/backend_address_pool_properties_format.rb'
require_relative 'models/load_balancing_rule_properties_format.rb'
require_relative 'models/probe_properties_format.rb'
require_relative 'models/inbound_nat_rule_properties_format.rb'
require_relative 'models/load_balancer_properties_format.rb'
require_relative 'models/load_balancer_list_result.rb'
require_relative 'models/address_space.rb'
require_relative 'models/local_network_gateway_properties_format.rb'
require_relative 'models/local_network_gateway_list_result.rb'
require_relative 'models/network_interface_ip_configuration_properties_format.rb'
require_relative 'models/network_interface_dns_settings.rb'
require_relative 'models/network_interface_properties_format.rb'
require_relative 'models/network_interface_list_result.rb'
require_relative 'models/security_rule_properties_format.rb'
require_relative 'models/network_security_group_properties_format.rb'
require_relative 'models/network_security_group_list_result.rb'
require_relative 'models/public_ip_address_dns_settings.rb'
require_relative 'models/public_ip_address_properties_format.rb'
require_relative 'models/public_ip_address_list_result.rb'
require_relative 'models/security_rule_list_result.rb'
require_relative 'models/subnet_properties_format.rb'
require_relative 'models/subnet_list_result.rb'
require_relative 'models/usage_name.rb'
require_relative 'models/usage.rb'
require_relative 'models/usages_list_result.rb'
require_relative 'models/virtual_network_gateway_ip_configuration_properties_format.rb'
require_relative 'models/virtual_network_gateway_properties_format.rb'
require_relative 'models/virtual_network_gateway_connection_properties_format.rb'
require_relative 'models/connection_shared_key.rb'
require_relative 'models/virtual_network_gateway_connection_list_result.rb'
require_relative 'models/connection_reset_shared_key_properties_format.rb'
require_relative 'models/connection_reset_shared_key.rb'
require_relative 'models/virtual_network_gateway_list_result.rb'
require_relative 'models/dhcp_options.rb'
require_relative 'models/virtual_network_properties_format.rb'
require_relative 'models/virtual_network_list_result.rb'
require_relative 'models/dns_name_availability_result.rb'
require_relative 'models/error_details.rb'
require_relative 'models/error.rb'
require_relative 'models/azure_async_operation_result.rb'
require_relative 'models/application_gateway_ip_configuration.rb'
require_relative 'models/application_gateway_ssl_certificate.rb'
require_relative 'models/application_gateway_frontend_ip_configuration.rb'
require_relative 'models/application_gateway_frontend_port.rb'
require_relative 'models/application_gateway_backend_address_pool.rb'
require_relative 'models/application_gateway_backend_http_settings.rb'
require_relative 'models/application_gateway_http_listener.rb'
require_relative 'models/application_gateway_request_routing_rule.rb'
require_relative 'models/application_gateway.rb'
require_relative 'models/frontend_ip_configuration.rb'
require_relative 'models/backend_address_pool.rb'
require_relative 'models/load_balancing_rule.rb'
require_relative 'models/probe.rb'
require_relative 'models/inbound_nat_rule.rb'
require_relative 'models/load_balancer.rb'
require_relative 'models/local_network_gateway.rb'
require_relative 'models/network_interface_ip_configuration.rb'
require_relative 'models/network_interface.rb'
require_relative 'models/security_rule.rb'
require_relative 'models/network_security_group.rb'
require_relative 'models/public_ip_address.rb'
require_relative 'models/subnet.rb'
require_relative 'models/virtual_network_gateway_ip_configuration.rb'
require_relative 'models/virtual_network_gateway.rb'
require_relative 'models/virtual_network_gateway_connection.rb'
require_relative 'models/virtual_network.rb'
require_relative 'models/application_gateway_sku_name.rb'
require_relative 'models/application_gateway_tier.rb'
require_relative 'models/ip_allocation_method.rb'
require_relative 'models/application_gateway_protocol.rb'
require_relative 'models/application_gateway_cookie_based_affinity.rb'
require_relative 'models/application_gateway_request_routing_rule_type.rb'
require_relative 'models/application_gateway_operational_state.rb'
require_relative 'models/transport_protocol.rb'
require_relative 'models/load_distribution.rb'
require_relative 'models/probe_protocol.rb'
require_relative 'models/security_rule_protocol.rb'
require_relative 'models/security_rule_access.rb'
require_relative 'models/security_rule_direction.rb'
require_relative 'models/usage_unit.rb'
require_relative 'models/virtual_network_gateway_type.rb'
require_relative 'models/vpn_type.rb'
require_relative 'models/virtual_network_gateway_connection_type.rb'
require_relative 'models/operation_status.rb'
require_relative 'application_gateways.rb'
require_relative 'load_balancers.rb'
require_relative 'local_network_gateways.rb'
require_relative 'network_interfaces.rb'
require_relative 'network_security_groups.rb'
require_relative 'public_ip_addresses.rb'
require_relative 'security_rules.rb'
require_relative 'subnets.rb'
require_relative 'usages.rb'
require_relative 'virtual_network_gateway_connections.rb'
require_relative 'virtual_network_gateways.rb'
require_relative 'virtual_networks.rb'
require_relative 'network_resource_provider_client.rb'
