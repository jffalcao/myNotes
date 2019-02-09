### 2018-10-02
---
**Event:** on Athena: Staring VMs in KVM

**Problem:**  Error starting domain: Requested operation is not valid: network 'default' is not active

**Solution:** 
```
http://ask.xmodulo.com/network-default-is-not-active.html

$ sudo virsh net-list --all
$ sudo virsh net-start default
```





