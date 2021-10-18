resource sa 'Microsoft.Storage/storageAccounts@2021-04-01' = {
  name: 'test1234masdbaa'
  location: 'westeurope'
  sku:{
    name: 'Premium_LRS'
  }
  kind: 'StorageV2'
  properties: {
    accessTier: 'Hot'
  }
}
