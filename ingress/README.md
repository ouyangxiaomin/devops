- kubectl create -f .
- kubectl get ing -n kube-system
- curl 9.110.85.100 -H Host:traefik-ui.local
- kubectl get ing
- curl 9.110.85.100 -H Host:traefik.nginx.io
- curl 9.110.85.100 -H Host:traefik.frontend.io
- http://traefik-ui.local
- http://traefik.nginx.io
- http://traefik.frontend.io

If you only want to use one domain and sub-path, you can update the last section in ing-sample.yaml according to your design.
