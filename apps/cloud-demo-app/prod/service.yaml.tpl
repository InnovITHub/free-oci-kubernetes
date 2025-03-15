apiVersion: v1
kind: Service
metadata:
  name: cloud-demo-app-service
  namespace: cloud-demo-app
  annotations:
    service.beta.kubernetes.io/oci-load-balancer-shape: "flexible" # Enable Flexible Load Balancer
    service.beta.kubernetes.io/oci-load-balancer-shape-flex-min: "10"  # Minimum bandwidth 10 Mbps
    service.beta.kubernetes.io/oci-load-balancer-shape-flex-max: "100"  # Maximum bandwidth 100 Mbps
    service.beta.kubernetes.io/oci-load-balancer-internal: "false" # Make it a public Load Balancer (for internet access)
spec:
  selector:
    app: cloud-demo-app-pod-app # Selector to match the Pod (add label to Pod in next step)
  ports:
  - protocol: TCP
    port: 80        # Port to expose on the Service (internet-facing port)
    targetPort: 8080  # Port the container is listening on (must match containerPort in Pod if different)
  type: LoadBalancer # Request a LoadBalancer from your cloud provider
  externalTrafficPolicy: Local