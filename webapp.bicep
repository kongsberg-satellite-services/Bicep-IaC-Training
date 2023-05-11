param namingPrefix string
param location string = resourceGroup().location

module AppPlanDeploy 'WebAppPlan.bicep' = {
  name: 'AppPlanDeploy'
  params:{
    name:'${namingPrefix}-plan'
    location: location
  }
}

module SiteDeploy 'site.bicep' = {
  name: 'SiteDeploy'
  params:{
    name:'${namingPrefix}-site'
    PlanId: AppPlanDeploy.outputs.appServicePlanId
    location: location
  }
}
