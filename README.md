# DevOps coursework and diploma — Netology, 2022–2024

Coursework for the Netology DevOps programme, done alongside a full-time job.
All commits are mine; the kubespray tree under `99-Diploma/20-kubespray/` is
vendored upstream code and none of it is my work.

## The diploma (`99-Diploma/`)

A multi-node Kubernetes cluster on Yandex Cloud, built end to end:

- `10-terraform/` — VPC with three subnets across `ru-central1-a/b/c`,
  preemptible compute instances, a network load balancer in front of the
  Kubernetes apiserver on 6443, an Ansible inventory rendered from a template,
  remote state in Terraform Cloud.
- `20-kubespray/` — cluster bootstrap with kubespray (vendored).
- `30-k8s/` — qbec/jsonnet manifests: the demo application, a
  kube-prometheus/Grafana monitoring stack, and a GitLab Agent for CI-driven
  deploys to the cluster.
- `40-app/` — the demo application itself, as a submodule.

The diploma's own [readme](99-Diploma/readme.md) (in Russian) documents the
full run, with screenshots.

## Course modules

`1_SysAdmin`, `2_Virt`, `3_CI_MNT`, `4_MicroServices`, `50_K8S`,
`55_K8S_Extended`, `60-CloudProviders` — one directory per course block, from
Linux and virtualisation through CI/CD and monitoring to Kubernetes and cloud
providers.

## Related repositories

- [demosite](https://github.com/vvyushmanov/demosite) and
  [demosite-helm](https://github.com/vvyushmanov/demosite-helm) — the demo
  application and the Helm chart I wrote for it.
- [my_own_collection](https://github.com/vvyushmanov/my_own_collection) — an
  Ansible collection built for the course.
- [vector-role](https://github.com/vvyushmanov/vector-role) and
  [lighthouse-role](https://github.com/vvyushmanov/lighthouse-role) — Ansible
  roles for the Vector log shipper and the Lighthouse log UI.
