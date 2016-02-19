Vagrant with Puppet provisioning
=============================================================

Steps to run example:

```sh
$ git clone [repository url]
```

```sh
$ cd vagrant-puppet-template
```

```sh
$ vagrant up
```

Enjoy!


Reprovisioning

If you want to perform a hard reprovision, you can do the following:

```sh
$ vagrant destroy
$ vagrant up
```

or if you want a soft reprovision:

```h
$ vagrant reload --provision
```

Template files
=============================================================

+ **VagrantFile**: configures VM and enable desired provisioners.
+ **shell_provisioning.sh**: performs an initial provisioning (Updates system, installs puppet modules, ...).
+ **manifests/default.dd**: executes Puppet modules and performs provision.
