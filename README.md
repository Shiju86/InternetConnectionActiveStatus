# InternetConnectionActiveStatus

First import Network framework on your project

We can use specific interface type in NWPathMonitor class

NWPathMonitor(requiredInterfaceType: <#T##NWInterface.InterfaceType#>)

Type should be .cellular, .loopback, .other, .wifi, .wiredEthernet

To keep it as empty NWPathMonitor(), will take care of all interface type.

