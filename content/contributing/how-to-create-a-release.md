---
date: 2016-11-15T16:37:43+01:00
next: /next/path
prev: /prev/path
title: How to create a release
toc: true
weight: 6
---
## Releaseguide

In order to release a new version of rationally, there are a few things to check and look out for.

* Increase the version number in the files `RationallyAddin.cs` and `product.wxs`. The version number should follow  [semantic versioning guidelines](http://semver.org/).
* Ensure the `setup-project` contains the latest templates and stencils.
* Commit and push latest changes.
** Ensure the version number in `RationallyAddin.cs` and `product.wxs` are the same.
* Built the msi.
** Ensure the msi was built in **RELEASE** mode (not DEBUG).
** Add the version number to the name of the msi. (e.g., *rationally_v0-1-2.msi*)
** Sign the msi using Microsoft signtool.
* Create a release on Github.
** The release should have the same version number as the msi.
** Add release notes.
** Upload the msi.


{{% notice warning %}} We use a simplified semantic versioning scheme consisting of major.minor.build, e.g., 2.3.4. The version indicator should only contain numbers, otherwise users are not automatically informed about a new release. {{% /notice %}}
