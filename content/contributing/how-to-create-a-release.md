---
date: 2016-11-15T16:37:43+01:00
next: /next/path
prev: /prev/path
title: How to create a release
toc: true
weight: 6
---
## Release Guide

The following list describes the steps that need to be taken in order to release a new version of rationally.

1. **Increase the version number** in the files `RationallyAddin.cs` and `product.wxs`. The version number should follow  [semantic versioning guidelines](http://semver.org/). 
* **Commit and push latest changes.**
* Assert that the `setup-project` contains the latest templates and stencils.
* Assert that the version number in `RationallyAddin.cs` and `product.wxs` are the same.
* **Built the msi.**
* Assert that the msi was built in `RELEASE` mode (not DEBUG).
* Add the version number to the name of the msi. (e.g., *rationally_v0-1-2.msi*)
* Sign the msi using the [Microsoft signtool](https://msdn.microsoft.com/de-de/library/8s9b9yaz(v=vs.110).aspx)
* **Create a [release on Github](https://github.com/rationally/rationally_visio/releases).**
* The release should have the same version number as the msi.
* Add release notes.
* Upload the msi file.

{{% notice warning %}} We use a simplified semantic versioning scheme consisting of major.minor.build, e.g., 2.3.4. The version indicator should only contain numbers, otherwise users are not automatically informed about a new release. {{% /notice %}}
