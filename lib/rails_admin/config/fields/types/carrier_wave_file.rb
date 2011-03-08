if defined?(::CarrierWave)
  module RailsAdmin::Config::Fields::Types
    # Field type that supports CarrierWave file uploads
    class CarrierWaveFile < RailsAdmin::Config::Fields::Types::FileUpload
      RailsAdmin::Config::Fields::Types.register(self)
      register_instance_option(:formatted_value) do
        unless value.blank?
          "<a href='#{value}'}>#{value.to_s.split("/").last}</a>".html_safe
        else
          ""
        end
      end
    end
  end
end