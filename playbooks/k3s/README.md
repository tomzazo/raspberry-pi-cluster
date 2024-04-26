### Disclaimer
The `main` and `node` playbooks have been successfully tested on Raspberry Pi OS (based on Debian Bookshelf) on both: Raspberry Pi 5 and Raspberry Pi 3.

### Ansible modules required:

- ansible-galaxy collection install ansible.posix

### Manual fixes:

- Manually add the `kube-dns` pod's internal IP to the `/etc/resolvconf.conf` to each of the nodes in the cluster and restart all nodes. This is to allow DNS resolution for NFS servers used by multiple pods. Install `openresolv` if `/etc/resolvconf.conf` is missing. [More information here.](https://github.com/appscode/third-party-tools/blob/master/storage/nfs/README.md#before-you-begin)
