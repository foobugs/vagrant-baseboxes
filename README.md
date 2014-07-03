# Basesboxes for Vagrant

This repository contains [Packer](http://www.packer.io/) definitions for building [Vagrant](http://www.vagrantup.com/) baseboxes.

## Current Baseboxes

All current baseboxes are only available for Vagrant provider VirtualBox in 64 bit architecture. Every basebox is configured to use German Ubuntu repository mirrors and includes an installation of [Chef Client](http://www.getchef.com/chef/install/) with minimum version 11.12.8-2. Vagrant can be instructed to install a newer version of Chef Client at runtime using the [vagrant-omnibus](https://github.com/schisamo/vagrant-omnibus) plugin.

The following baseboxes are available:

- foobugs-ubuntu-12.04
- foobugs-ubuntu-14.04

All baseboxes were built under Mac OS X 10.9.3 with VirtualBox 4.3.12, Vagrant 1.6.3 and Packer 0.6.0.

## Building and Using a Basebox

### Requirements

Install the following software tools:

- Packer >= v0.6.0 (http://www.packer.io/downloads.html)
- VirtualBox >= v4.3.12 (https://www.virtualbox.org/wiki/Downloads)
- Vagrant >= v1.6.3 (http://www.vagrantup.com/downloads.html)

### Building a Basebox

1. Clone this repository with `git clone https://github.com/foobugs/vagrant-baseboxes.git`
2. Change to project directory with `cd vagrant-baseboxes`
3. Build with `packer build foobugs-ubuntu-14.04`

### Using a Basebox

1. Copy the corresponding Vagrant template file (i.e. `cp Vagrantfile.example-14.04 Vagrantfile`)
2. Run Vagrant with `vagrant up`

## License & Authors

These basebox definitions were converted from [opscode/bento](https://github.com/opscode/bento) definitions originally based on [work done by Tim Dysinger](https://github.com/dysinger/basebox) to make "Don't Repeat Yourself" (DRY) modular baseboxes. Thanks Opscode and Tim!

```text
Copyright 2014, foobugs Oelke & Eichner GbR (<mail@foobugs.com>)
Copyright 2012-2014, Chef Software, Inc. (<legal@getchef.com>)
Copyright 2011-2012, Tim Dysinger (<tim@dysinger.net>)

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
```
