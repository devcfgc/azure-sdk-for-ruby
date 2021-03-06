# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.0.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::ServiceBus
  module Models
    #
    # Parameters supplied to the Create Or Update Topic operation.
    #
    class TopicCreateOrUpdateParameters

      include MsRestAzure

      # @return [String] Topic name.
      attr_accessor :name

      # @return [String] Location of the resource.
      attr_accessor :location

      # @return [DateTime] Last time the message was sent, or a request was
      # received, for this topic.
      attr_accessor :accessed_at

      # @return [String] TimeSpan idle interval after which the topic is
      # automatically deleted. The minimum duration is 5 minutes.
      attr_accessor :auto_delete_on_idle

      # @return [EntityAvailabilityStatus] Entity availability status for the
      # topic. Possible values include: 'Available', 'Limited', 'Renaming',
      # 'Restoring', 'Unknown'
      attr_accessor :entity_availability_status

      # @return [DateTime] Exact time the message was created.
      attr_accessor :created_at

      # @return [MessageCountDetails]
      attr_accessor :count_details

      # @return [String] Default message time to live value. This is the
      # duration after which the message expires, starting from when the
      # message is sent to Service Bus. This is the default value used when
      # TimeToLive is not set on a message itself.
      attr_accessor :default_message_time_to_live

      # @return [String] TimeSpan structure that defines the duration of the
      # duplicate detection history. The default value is 10 minutes.
      attr_accessor :duplicate_detection_history_time_window

      # @return [Boolean] Value that indicates whether server-side batched
      # operations are enabled.
      attr_accessor :enable_batched_operations

      # @return [Boolean] Value that indicates whether Express Entities are
      # enabled. An express topic holds a message in memory temporarily before
      # writing it to persistent storage.
      attr_accessor :enable_express

      # @return [Boolean] Value that indicates whether the topic to be
      # partitioned across multiple message brokers is enabled.
      attr_accessor :enable_partitioning

      # @return [Boolean] Value that indicates whether partitioning is enabled
      # or disabled.
      attr_accessor :enable_subscription_partitioning

      # @return [Boolean] Whether messages should be filtered before
      # publishing.
      attr_accessor :filtering_messages_before_publishing

      # @return [Boolean] Value that indicates whether the message is
      # accessible anonymously.
      attr_accessor :is_anonymous_accessible

      # @return [Boolean]
      attr_accessor :is_express

      # @return [Integer] Maximum size of the topic in megabytes, which is the
      # size of the memory allocated for the topic.
      attr_accessor :max_size_in_megabytes

      # @return [Boolean] Value indicating if this topic requires duplicate
      # detection.
      attr_accessor :requires_duplicate_detection

      # @return [Integer] Size of the topic, in bytes.
      attr_accessor :size_in_bytes

      # @return [EntityStatus] Enumerates the possible values for the status of
      # a messaging entity. Possible values include: 'Active', 'Creating',
      # 'Deleting', 'Disabled', 'ReceiveDisabled', 'Renaming', 'Restoring',
      # 'SendDisabled', 'Unknown'
      attr_accessor :status

      # @return [Integer] Number of subscriptions.
      attr_accessor :subscription_count

      # @return [Boolean] Value that indicates whether the topic supports
      # ordering.
      attr_accessor :support_ordering

      # @return [DateTime] The exact time the message was updated.
      attr_accessor :updated_at


      #
      # Mapper for TopicCreateOrUpdateParameters class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'TopicCreateOrUpdateParameters',
          type: {
            name: 'Composite',
            class_name: 'TopicCreateOrUpdateParameters',
            model_properties: {
              name: {
                required: false,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              location: {
                required: true,
                serialized_name: 'location',
                type: {
                  name: 'String'
                }
              },
              accessed_at: {
                required: false,
                serialized_name: 'properties.accessedAt',
                type: {
                  name: 'DateTime'
                }
              },
              auto_delete_on_idle: {
                required: false,
                serialized_name: 'properties.autoDeleteOnIdle',
                type: {
                  name: 'String'
                }
              },
              entity_availability_status: {
                required: false,
                serialized_name: 'properties.entityAvailabilityStatus ',
                type: {
                  name: 'Enum',
                  module: 'EntityAvailabilityStatus'
                }
              },
              created_at: {
                required: false,
                serialized_name: 'properties.createdAt',
                type: {
                  name: 'DateTime'
                }
              },
              count_details: {
                required: false,
                serialized_name: 'properties.countDetails',
                type: {
                  name: 'Composite',
                  class_name: 'MessageCountDetails'
                }
              },
              default_message_time_to_live: {
                required: false,
                serialized_name: 'properties.defaultMessageTimeToLive',
                type: {
                  name: 'String'
                }
              },
              duplicate_detection_history_time_window: {
                required: false,
                serialized_name: 'properties.duplicateDetectionHistoryTimeWindow ',
                type: {
                  name: 'String'
                }
              },
              enable_batched_operations: {
                required: false,
                serialized_name: 'properties.enableBatchedOperations',
                type: {
                  name: 'Boolean'
                }
              },
              enable_express: {
                required: false,
                serialized_name: 'properties.enableExpress',
                type: {
                  name: 'Boolean'
                }
              },
              enable_partitioning: {
                required: false,
                serialized_name: 'properties.enablePartitioning',
                type: {
                  name: 'Boolean'
                }
              },
              enable_subscription_partitioning: {
                required: false,
                serialized_name: 'properties.enableSubscriptionPartitioning',
                type: {
                  name: 'Boolean'
                }
              },
              filtering_messages_before_publishing: {
                required: false,
                serialized_name: 'properties.filteringMessagesBeforePublishing',
                type: {
                  name: 'Boolean'
                }
              },
              is_anonymous_accessible: {
                required: false,
                serialized_name: 'properties.isAnonymousAccessible',
                type: {
                  name: 'Boolean'
                }
              },
              is_express: {
                required: false,
                serialized_name: 'properties.isExpress',
                type: {
                  name: 'Boolean'
                }
              },
              max_size_in_megabytes: {
                required: false,
                serialized_name: 'properties.maxSizeInMegabytes',
                type: {
                  name: 'Number'
                }
              },
              requires_duplicate_detection: {
                required: false,
                serialized_name: 'properties.requiresDuplicateDetection',
                type: {
                  name: 'Boolean'
                }
              },
              size_in_bytes: {
                required: false,
                serialized_name: 'properties.sizeInBytes',
                type: {
                  name: 'Number'
                }
              },
              status: {
                required: false,
                serialized_name: 'properties.status',
                type: {
                  name: 'Enum',
                  module: 'EntityStatus'
                }
              },
              subscription_count: {
                required: false,
                serialized_name: 'properties.subscriptionCount',
                type: {
                  name: 'Number'
                }
              },
              support_ordering: {
                required: false,
                serialized_name: 'properties.supportOrdering',
                type: {
                  name: 'Boolean'
                }
              },
              updated_at: {
                required: false,
                serialized_name: 'properties.updatedAt',
                type: {
                  name: 'DateTime'
                }
              }
            }
          }
        }
      end
    end
  end
end
