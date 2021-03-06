# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.0.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Resources
  module Models
    #
    # Information from validate template deployment response.
    #
    class DeploymentValidateResult

      include MsRestAzure

      # @return [ResourceManagementErrorWithDetails] Validation error.
      attr_accessor :error

      # @return [DeploymentPropertiesExtended] The template deployment
      # properties.
      attr_accessor :properties


      #
      # Mapper for DeploymentValidateResult class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'DeploymentValidateResult',
          type: {
            name: 'Composite',
            class_name: 'DeploymentValidateResult',
            model_properties: {
              error: {
                required: false,
                serialized_name: 'error',
                type: {
                  name: 'Composite',
                  class_name: 'ResourceManagementErrorWithDetails'
                }
              },
              properties: {
                required: false,
                serialized_name: 'properties',
                type: {
                  name: 'Composite',
                  class_name: 'DeploymentPropertiesExtended'
                }
              }
            }
          }
        }
      end
    end
  end
end
