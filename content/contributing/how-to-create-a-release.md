---
date: 2016-11-15T16:37:43+01:00
next: /next/path
prev: /prev/path
title: How to create a release
toc: true
weight: 6
---

1. Update version numbers in file XYZ
2. Commit and push the latest changes
3. Build the project
4. Sign the msi
3. Create a new relase on github
5. Add release notes and binary

{{% notice warning %}}
We use a simplified semantic versioning scheme consisting of major.minor.build, e.g., 2.3.4. The version indicator should **only contain numbers**, otherwise users are not automatically informed about a new relase.
{{% /notice %}}