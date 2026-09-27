targetScope = 'resourceGroup'

@description('Azure region for the SOC lab.')
param location string = resourceGroup().location

@description('Globally unique Log Analytics workspace name.')
param workspaceName string

@description('Log retention in days.')
@minValue(30)
@maxValue(730)
param retentionInDays int = 30

resource workspace 'Microsoft.OperationalInsights/workspaces@2025-07-01' = {
  name: workspaceName
  location: location
  properties: {
    retentionInDays: retentionInDays
    sku: {
      name: 'PerGB2018'
    }
    features: {
      enableLogAccessUsingOnlyResourcePermissions: true
    }
    publicNetworkAccessForIngestion: 'Enabled'
    publicNetworkAccessForQuery: 'Enabled'
  }
}

resource sentinelOnboarding 'Microsoft.SecurityInsights/onboardingStates@2025-09-01' = {
  name: 'default'
  scope: workspace
  properties: {
    customerManagedKey: false
  }
}

output workspaceResourceId string = workspace.id
output workspaceCustomerId string = workspace.properties.customerId
