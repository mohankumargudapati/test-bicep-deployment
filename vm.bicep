param adminUsername string
@secure()
param adminPassword string


param location string
param vmName string
param vmSize string

// Reference to the VM module
module vmModule '../../Modules/virtualmachine/main.bicep' = {
  name: 'myVmDeployment'
  params: {
    adminUsername: adminUsername
    adminPassword: adminPassword
    location: location
    vmName: vmName
    vmSize: vmSize
  }
}

// Output the public IP address from the VM module
output publicIpAddress string = vmModule.outputs.publicIpAddress