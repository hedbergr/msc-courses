# Multi-Machine Setup

We can create multiple machines using either VirtualBox:
```
vagrant up --provider=virtualbox
```
or DigitalOcean:
```
vagrant up --provider=digital_ocean
```

# Note

Syncing hostfile from guest to host only works with VirtualBox and does not work with DigitalOcean.