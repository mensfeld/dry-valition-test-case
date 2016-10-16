Raw = Dry::Validation.Schema(Base) do
  required(:stdout) { str? | array? | type?(Hash) }
  required(:stderr) { str? | array? | type?(Hash) }
  required(:exit_code) { int? & gteq?(0) & lteq?(255) }
end
