param location string = resourceGroup().location
param name string


resource appServicePlan 'Microsoft.Web/serverfarms@2020-12-01' = {
  name: 'name'
  location: location
  sku: {
    name: 'B1'
    capacity: 1
  }
}
output appServicePlanId string = appServicePlan.id
