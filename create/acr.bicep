@minLength(5)
@maxLength(50)
@description('Provide a globally unique name for the registry')
param acrName string = 'debian-runner'

@description('Provdide a location for the registry')
param location string = resourceGroup().location

@description('Provde a tier of registry')
param acrSKU string = 'Basic'

resource acrResource 'Microsoft.ContainerRegistry/registries@2022-02-01-preview' = {
  name: acrName
  location: location
  sku: {
    name: acrSKU
  }
  properties: {
    adminUserEnabled: true
  }
}

@description('Output the login server property')
output loginServer string = acrResource.properties.loginServer
