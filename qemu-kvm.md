## KVM Installation and coniguration

### 1- Install KVM for testing install up to this point

```
> sudo zypper install kvm libvirt libvirt-python qemu virt-manager
> sudo systemctl status libvirtd.service
> sudo systemctl start libvirtd.service
> sudo systemctl enable libvirtd.service
```

### Increase disk size of a VM

- Increase the size o te VM file storage
```
> sudo qemu-img resize /var/lib/libvirt/images/opensuse15.qcow2 +10G
```
- start the VM

### Sharing Host files with guests

https://www.linux-kvm.org/page/9p_virtio

- add Filesystem in guest using virt-manager GUI
    - Type: mount
    - Driver: Default
    - Mode: Mapped
    - Ssource Path: /home/jffalcao/jfrflabs
    - Target Path: /hostshare

- Run commands in guest
```
    > su
    # mkdir ~/jfrflabs
    # mount -t 9p -o trans=virtio,version=9p2000.L /hostshare ~/jfrflabs
```
### Virsh

https://computingforgeeks.com/virsh-commands-cheatsheet/

```
> sudo virsh
# connect
# list
# node info
# list --all
# start <vm>
```