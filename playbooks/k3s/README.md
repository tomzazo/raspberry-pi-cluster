### Ansible modules required:

- ansible-galaxy collection install ansible.posix


### Manual fixes:

- Manually add the `kube-dns` pod's internal IP to the `/etc/resolvconf.conf` to each of the nodes in the cluster. This is to allow DNS resolution for NFS servers used by multiple pods. Install `openresolv` if `/etc/resolvconf.conf` is missing. [More information here.](https://github.com/appscode/third-party-tools/blob/master/storage/nfs/README.md#before-you-begin)
