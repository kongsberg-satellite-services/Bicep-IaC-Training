param location string = resourceGroup().location
param name string
param PlanId string
resource webApplication 'Microsoft.Web/sites@2021-01-15' = {
  name: name
  location: location
  tags: {
    'hidden-related:${resourceGroup().id}/providers/Microsoft.Web/serverfarms/appServicePlan': 'Resource'
  }
  properties: {
    serverFarmId: PlanId
  }
}
