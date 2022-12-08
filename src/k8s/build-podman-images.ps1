$path = $MyInvocation.MyCommand.Path | Split-Path

& podman login bbdemo1.azurecr.io -u BBDemo1 -p V21UQrujsV/5Adf3Qv5zkAZvDxZL2x0M

$imageName = 'mosquitto'



& podman build --tag $imageName "$path/$imageName"
& podman tag localhost/$imageName bbdemo1.azurecr.io/$imageName
& podman push bbdemo1.azurecr.io/$imageName

$imageName = 'trafficcontrolservice'

& podman build --tag $imageName "$path/../$imageName"
& podman tag localhost/$imageName bbdemo1.azurecr.io/$imageName
& podman push bbdemo1.azurecr.io/$imageName

$imageName = 'finecollectionservice'

& podman build --tag $imageName "$path/../$imageName"
& podman tag localhost/$imageName bbdemo1.azurecr.io/$imageName
& podman push bbdemo1.azurecr.io/$imageName

$imageName = 'vehicleregistrationservice'

& podman build --tag $imageName "$path/../$imageName"
& podman tag localhost/$imageName bbdemo1.azurecr.io/$imageName
& podman push bbdemo1.azurecr.io/$imageName

$imageName = 'simulation'

& podman build --tag $imageName "$path/../$imageName"
& podman tag localhost/$imageName bbdemo1.azurecr.io/$imageName
& podman push bbdemo1.azurecr.io/$imageName
