kubectl delete `
    -f simulation.yaml `
    -f trafficcontrolservice.yaml `
    -f finecollectionservice.yaml `
    -f vehicleregistrationservice.yaml `
    -f maildev.yaml `
    -f pubsub-rabbitmq.yaml `
    -f state-redis.yaml `
    -f email.yaml `
    -f entrycam.yaml `
    -f exitcam.yaml `
    -f redis.yaml `
    -f rabbitmq.yaml `
    -f mosquitto.yaml `
    -f secrets.yaml `
    -f zipkin.yaml `
    -f dapr-config.yaml