json.array! @resources do |permissible|
  account = permissible.permissible
  next if account.nil?

  json.partial! 'platform/api/v1/models/account', formats: [:json], resource: account
end
