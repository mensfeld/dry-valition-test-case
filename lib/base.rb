class InvalidAttributes < StandardError; end

class Base < Dry::Validation::Schema
  def call(*args)
    result = super
    return result if result.success?

    raise InvalidAttributes, "#{result.messages}: #{result.output}"
  end
end
