=begin
#Coinbase Platform API

#This is the OpenAPI 3.0 specification for the Coinbase Platform APIs, used in conjunction with the Coinbase Platform SDKs.

The version of the OpenAPI document: 0.0.1-alpha

Generated by: https://openapi-generator.tech
Generator version: 7.9.0

=end

require 'date'
require 'time'

module Coinbase::Client
  class FeatureSet
    # Whether the network supports a faucet
    attr_accessor :faucet

    # Whether the network supports Server-Signers
    attr_accessor :server_signer

    # Whether the network supports transfers
    attr_accessor :transfer

    # Whether the network supports trading
    attr_accessor :trade

    # Whether the network supports staking
    attr_accessor :stake

    # Whether the network supports gasless sends
    attr_accessor :gasless_send

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'faucet' => :'faucet',
        :'server_signer' => :'server_signer',
        :'transfer' => :'transfer',
        :'trade' => :'trade',
        :'stake' => :'stake',
        :'gasless_send' => :'gasless_send'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'faucet' => :'Boolean',
        :'server_signer' => :'Boolean',
        :'transfer' => :'Boolean',
        :'trade' => :'Boolean',
        :'stake' => :'Boolean',
        :'gasless_send' => :'Boolean'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `Coinbase::Client::FeatureSet` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Coinbase::Client::FeatureSet`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'faucet')
        self.faucet = attributes[:'faucet']
      else
        self.faucet = nil
      end

      if attributes.key?(:'server_signer')
        self.server_signer = attributes[:'server_signer']
      else
        self.server_signer = nil
      end

      if attributes.key?(:'transfer')
        self.transfer = attributes[:'transfer']
      else
        self.transfer = nil
      end

      if attributes.key?(:'trade')
        self.trade = attributes[:'trade']
      else
        self.trade = nil
      end

      if attributes.key?(:'stake')
        self.stake = attributes[:'stake']
      else
        self.stake = nil
      end

      if attributes.key?(:'gasless_send')
        self.gasless_send = attributes[:'gasless_send']
      else
        self.gasless_send = nil
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if @faucet.nil?
        invalid_properties.push('invalid value for "faucet", faucet cannot be nil.')
      end

      if @server_signer.nil?
        invalid_properties.push('invalid value for "server_signer", server_signer cannot be nil.')
      end

      if @transfer.nil?
        invalid_properties.push('invalid value for "transfer", transfer cannot be nil.')
      end

      if @trade.nil?
        invalid_properties.push('invalid value for "trade", trade cannot be nil.')
      end

      if @stake.nil?
        invalid_properties.push('invalid value for "stake", stake cannot be nil.')
      end

      if @gasless_send.nil?
        invalid_properties.push('invalid value for "gasless_send", gasless_send cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if @faucet.nil?
      return false if @server_signer.nil?
      return false if @transfer.nil?
      return false if @trade.nil?
      return false if @stake.nil?
      return false if @gasless_send.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          faucet == o.faucet &&
          server_signer == o.server_signer &&
          transfer == o.transfer &&
          trade == o.trade &&
          stake == o.stake &&
          gasless_send == o.gasless_send
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [faucet, server_signer, transfer, trade, stake, gasless_send].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      attributes = attributes.transform_keys(&:to_sym)
      transformed_hash = {}
      openapi_types.each_pair do |key, type|
        if attributes.key?(attribute_map[key]) && attributes[attribute_map[key]].nil?
          transformed_hash["#{key}"] = nil
        elsif type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[attribute_map[key]].is_a?(Array)
            transformed_hash["#{key}"] = attributes[attribute_map[key]].map { |v| _deserialize($1, v) }
          end
        elsif !attributes[attribute_map[key]].nil?
          transformed_hash["#{key}"] = _deserialize(type, attributes[attribute_map[key]])
        end
      end
      new(transformed_hash)
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def self._deserialize(type, value)
      case type.to_sym
      when :Time
        Time.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :Boolean
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        # models (e.g. Pet) or oneOf
        klass = Coinbase::Client.const_get(type)
        klass.respond_to?(:openapi_any_of) || klass.respond_to?(:openapi_one_of) ? klass.build(value) : klass.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        if value.nil?
          is_nullable = self.class.openapi_nullable.include?(attr)
          next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
        end

        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end

end
