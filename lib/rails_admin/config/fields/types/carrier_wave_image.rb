if defined?(::CarrierWave)
  module RailsAdmin::Config::Fields::Types
    # Field type that supports CarrierWave file uploads with image preview
    class CarrierWaveImage < CarrierWaveFile
      RailsAdmin::Config::Fields::Types.register(self)
    end
    # Register field type to the types registry
  end
end