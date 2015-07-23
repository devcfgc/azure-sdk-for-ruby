# Code generated by Microsoft (R) AutoRest Code Generator 0.11.0.0
# Changes may cause incorrect behavior and will be lost if the code is


module AzureNetworkManagement
  module Models
    #
    # Model object.
    #
    class InboundNatRulePropertiesFormat
      # @return [SubResource] Gets or sets a reference to frontend IP Addresses
      attr_accessor :frontend_ipconfiguration

      # @return [SubResource] Gets or sets a reference to a private ip address
      # defined on a NetworkInterface of a VM. Traffic sent to frontendPort
      # of each of the frontendIPConfigurations is forwarded to the backed IP
      attr_accessor :backend_ipconfiguration

      # @return Gets or sets the transport potocol for the external endpoint.
      # Possible values are Udp or Tcp. Possible values for this property
      # include: 'Udp', 'Tcp'
      attr_accessor :protocol

      # @return [Integer] Gets or sets the port for the external endpoint. You
      # can spcify any port number you choose, but the port numbers specified
      # for each role in the service must be unique. Possible values range
      # between 1 and 65535, inclusive
      attr_accessor :frontend_port

      # @return [Integer] Gets or sets a port used for internal connections on
      # the endpoint. The localPort attribute maps the eternal port of the
      # endpoint to an internal port on a role. This is useful in scenarios
      # where a role must communicate to an internal compotnent on a port
      # that is different from the one that is exposed externally. If not
      # specified, the value of localPort is the same as the port attribute.
      # Set the value of localPort to '*' to automatically assign an
      # unallocated port that is discoverable using the runtime API
      attr_accessor :backend_port

      # @return [Integer] Gets or sets the timeout for the Tcp idle
      # connection. The value can be set between 4 and 30 minutes. The
      # default value is 4 minutes. This emlement is only used when the
      # protocol is set to Tcp
      attr_accessor :idle_timeout_in_minutes

      # @return [Boolean] Configures a virtual machine's endpoint for the
      # floating IP capability required to configure a SQL AlwaysOn
      # availability Group. This setting is required when using the SQL
      # Always ON availability Groups in SQL server. This setting can't be
      # changed after you create the endpoint
      attr_accessor :enable_floating_ip

      # @return [String] Gets or sets Provisioning state of the PublicIP
      # resource Updating/Deleting/Failed
      attr_accessor :provisioning_state

      #
      # Validate the object. Throws ArgumentError if validation fails.
      #
      def validate
        @frontend_ipconfiguration.validate unless @frontend_ipconfiguration.nil?
        @backend_ipconfiguration.validate unless @backend_ipconfiguration.nil?
      end

      #
      # Serializes given Model object into Ruby Hash.
      # @param object Model object to serialize.
      # @return [Hash] Serialized object in form of Ruby Hash.
      #
      def self.serialize_object(object)
        object.validate
        output_object = {}

        serialized_property = object.frontend_ipconfiguration
        if (serialized_property)
          serialized_property = AzureNetworkManagement::Models::SubResource.serialize_object(serialized_property)
        end
        output_object['frontendIPConfiguration'] = serialized_property unless serialized_property.nil?

        serialized_property = object.backend_ipconfiguration
        if (serialized_property)
          serialized_property = AzureNetworkManagement::Models::SubResource.serialize_object(serialized_property)
        end
        output_object['backendIPConfiguration'] = serialized_property unless serialized_property.nil?

        serialized_property = object.protocol
        output_object['protocol'] = serialized_property unless serialized_property.nil?

        serialized_property = object.frontend_port
        output_object['frontendPort'] = serialized_property unless serialized_property.nil?

        serialized_property = object.backend_port
        output_object['backendPort'] = serialized_property unless serialized_property.nil?

        serialized_property = object.idle_timeout_in_minutes
        output_object['idleTimeoutInMinutes'] = serialized_property unless serialized_property.nil?

        serialized_property = object.enable_floating_ip
        output_object['enableFloatingIP'] = serialized_property unless serialized_property.nil?

        serialized_property = object.provisioning_state
        output_object['provisioningState'] = serialized_property unless serialized_property.nil?

        output_object
      end

      #
      # Deserializes given Ruby Hash into Model object.
      # @param object [Hash] Ruby Hash object to deserialize.
      # @return [InboundNatRulePropertiesFormat] Deserialized object.
      #
      def self.deserialize_object(object)
        return if object.nil?
        output_object = InboundNatRulePropertiesFormat.new

        deserialized_property = object['frontendIPConfiguration']
        if (deserialized_property)
          deserialized_property = AzureNetworkManagement::Models::SubResource.deserialize_object(deserialized_property)
        end
        output_object.frontend_ipconfiguration = deserialized_property

        deserialized_property = object['backendIPConfiguration']
        if (deserialized_property)
          deserialized_property = AzureNetworkManagement::Models::SubResource.deserialize_object(deserialized_property)
        end
        output_object.backend_ipconfiguration = deserialized_property

        deserialized_property = object['protocol']
        fail MsRest::DeserializationError.new('Error occured in deserializing the enum', nil, nil, nil) if (!deserialized_property.nil? && !deserialized_property.empty? && !AzureNetworkManagement::TransportProtocol.constants.any? { |e| AzureNetworkManagement::TransportProtocol.const_get(e) == deserialized_property })
        output_object.protocol = deserialized_property

        deserialized_property = object['frontendPort']
        deserialized_property = Integer(deserialized_property) unless deserialized_property.to_s.empty?
        output_object.frontend_port = deserialized_property

        deserialized_property = object['backendPort']
        deserialized_property = Integer(deserialized_property) unless deserialized_property.to_s.empty?
        output_object.backend_port = deserialized_property

        deserialized_property = object['idleTimeoutInMinutes']
        deserialized_property = Integer(deserialized_property) unless deserialized_property.to_s.empty?
        output_object.idle_timeout_in_minutes = deserialized_property

        deserialized_property = object['enableFloatingIP']
        output_object.enable_floating_ip = deserialized_property

        deserialized_property = object['provisioningState']
        output_object.provisioning_state = deserialized_property

        output_object.validate

        output_object
      end
    end
  end
end
