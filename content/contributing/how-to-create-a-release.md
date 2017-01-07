---
date: 2016-11-15T16:37:43+01:00
next: /next/path
prev: /prev/path
title: How to create a release
toc: true
weight: 6
---
# Releaseguide

In order to release a new version of rationally, there are a few things to check and look out for.
1.[ ] Update the version number based on 
2.[ ] Ensure the templates and stencils are up to date in the setup project. Re-add them if necessary.
3.[ ] Commit and push latest changes.
4.[ ] Ensure the version number in `RationallyAddin.cs` and `product.wxs`are the same.
5.[ ] Ensure the msi was built in RELEASE modus, not DEBUG.
6.[ ] Add the version number to the name of the msi.
7.[ ] Sign the msi using Microsoft signtool.
8.[ ] Create a release on Github with the same version number as the msi.
9.[ ] Add the msi to the Github release.
10.[ ] Add release notes to the release.

{{% notice warning %}} We use a simplified semantic versioning scheme consisting of major.minor.build, e.g., 2.3.4. The version indicator should only contain numbers, otherwise users are not automatically informed about a new release. {{% /notice %}}
