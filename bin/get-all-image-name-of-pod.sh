kc get pods -n kube-system <pod-name> -o jsonpath="{.spec.containers[:].image}" | tr ' ' '\n'