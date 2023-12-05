param namingPrefix string
param location string = resourceGroup().location

module AppPlanDeploy 'WebAppPlan.bicep' = {
  name: 'AppPlanDeploy'
  params:{
    name:'${namingPrefix}-asp'
    location: location
  }
}

module SiteDeploy 'site.bicep' = {
  name: 'SiteDeploy'
  params:{
    name:'${namingPrefix}-app'
    PlanId: AppPlanDeploy.outputs.appServicePlanId
    location: location
  }
}
