module Nsync
  module ActiveRecord
    module Producer
      module InstanceMethods
        def self.included(base)
          base.class_eval do
            after_save :nsync_write
            before_destroy :nsync_destroy
          end
        end

        def to_nsync_hash
          attributes
        end
      end
    end
  end
end
      
