$path = $MyInvocation.MyCommand.Path | Split-Path

& podman build --tag dapr-trafficcontrol/mosquitto:1.0 "$path/mosquitto"
& podman build --tag dapr-trafficcontrol/trafficcontrolservice:1.0 "$path/../trafficcontrolservice"

& podman build --tag dapr-trafficcontrol/finecollectionservice:1.0 "$path/../finecollectionservice"
& podman build --tag dapr-trafficcontrol/vehicleregistrationservice:1.0 "$path/../vehicleregistrationservice"
& podman build --tag dapr-trafficcontrol/simulation:1.0 "$path/../simulation"