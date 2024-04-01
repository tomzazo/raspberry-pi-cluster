### Ansible modules required:

- ansible-galaxy collection install ansible.posix


### Manual fixes:

- Manually add the `coredns` pod's internal IP to the `/etc/resolv.conf` to each of the nodes in the cluster. This is to allow DNS resolution for NFS servers used by multiple pods.
