# Changelog
- Kubernetes Cluster deployment using Ansible
- This deployment will setup a Kubernetes Cluster of:
  - Master Node: 1
  - Worker Nodes: 3

## Maintainer 
  - Name: Manohar Mikkili
  - Email: mikkilimanohar@gmail.com

### [v1.0] - 19-10-2022 (dd-mm-yyyy)

### Added
  - Ansible Roles for:
    - VM Management:
      - vmdeploy
      - gocustom
      - vmdelete
    - VM Snapshot Management:
      - vmsnapshot
      - vmsnapshotrevert
      - vmsnapshotremove
    - Kubernetes Cluster Management:
      - mastersetup
      - nodesetup
      - nodelabel

### Software support
  - ansible: 6.4.0
  - ansible-core: 2.13.4
  - pyvmomi: 7.0.3
  - vSphere-Automation-SDK: 1.71.0

### Kubernetes Packages:
  - kubelet: 1.25.3
  - kubeadm: 1.25.3
  - kubectl: 1.25.3

### Container Runtime Interface:
  - cri-o: 1.24.3
  - cri-tools: 1.23.0

### Container Network Interface
  - Calico-v3.24.1

## Deployment Guide:

### VM Management
- To deploy the linux server, use the below command:

  > ansible-playbook -i inventory containerlab.yaml --tags "deploy"

- To do the guest os customization, use the below command:

  > ansible-playbook -i inventory containerlab.yaml --tags "oscustom"

- To delete the linux server use the below command:

  > ansible-playbook -i inventory containerlab.yaml --tags "delete"

### VM Snapshot Management
- To take the vm snapshots, use the below command:

  > ansible-playbook -i inventory containerlab.yaml --tags "vmsnapshot"

- To revert the vm snapshot, use the below command:

  > ansible-playbook -i inventory containerlab.yaml --tags "vmsnapshotrevert"

- To remove the vm snapshot, use the below command:

  > ansible-playbook -i inventory containerlab.yaml --tags "vmsnapshotremove"

### Kubernetes Cluster Management
- To deploy & configure the kubernetes master, use the below command:

  > ansible-playbook -i inventory containerlab.yaml --tags "mastersetup"

- To deploy & configure the kubernetes worker nodes, use the below command:

  > ansible-playbook -i inventory containerlab.yaml --tags "nodesetup"

- To label the kubernetes worker nodes, use the below command:

  > ansible-playbook -i inventory containerlab.yaml --tags "nodelabel"
