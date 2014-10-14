# netflix-edda

A set of build scripts for instantiating a "disconnected" version of
Netflix's ``edda`` appliction.

Once built, this installation does not require any external network
dependencies and can be packaged up and installed on a private host.

# Build Dependencies

The following dependencies are required to execute the build:

* ``java``/``javac``
* ``make``
* ``coreutils`` (for ``install``, etc.)
* ``which``
* ``bash``
* ``git``

# Quickstart

This quickstart guide assumes a RHEL-based distro (e.g. CentOS 6).

Install build dependencies:

```console
$ sudo yum install -y java-1.7.0-openjdk-devel make coreutils which bash git
```

Navigate to project root and run ``make build``.

This will install the entire application under ``/usr/lib/edda``.

To launch, navigate to ``/usr/lib/edda`` and run ``./bin/edda``.

# Disconnected Rebuilds

If you want to rebuild ``edda`` in a disconnected mode, first install it
and distribute it to the destination host.

Next, just run ``make compile``.

Note that you may need to install ``log4j`` in order to get the tests to pass.
Update ``etc/edda-env.sh`` with the appropriate jar file before rebuilding.
