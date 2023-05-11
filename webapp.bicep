param namingPrefix string

module AppPlanDeploy 'WebAppPlan.bicep' = {
  name: 'AppPlanDeploy'
  params:{
    name:'${namingPrefix}-plan'
  }
}

module SiteDeploy 'site.bicep' = {
  name: 'SiteDeploy'
  params:{
    name:'${namingPrefix}-site'
    PlanId: AppPlanDeploy.outputs.appServicePlanId
  }
}
