apiVersion: kustomize.toolkit.fluxcd.io/v1
kind: Kustomization
metadata:
  name: my-secrets
  namespace: flux-system
spec:
  interval: 10m0s
  sourceRef:
    kind: GitRepository
    name: flux-system
  path: ./flux-modules/monitoring
  prune: true
  decryption:
    provider: sops
    secretRef:
      name: sops-gpg