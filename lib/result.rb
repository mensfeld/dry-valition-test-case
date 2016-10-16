Result = Dry::Validation.Schema(Base) do
  required(:raw).schema(Raw)
end
