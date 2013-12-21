mikutter Cookbook
=================

[![Build Status](https://travis-ci.org/cosmo0920/mikutter-cookbook.png?branch=master)](https://travis-ci.org/cosmo0920/mikutter-cookbook)

mikutter cookbook for chef-solo.

This cookbook makes more easier to start using mikutter!

Requirements
------------

#### packages
- `rbenv` - mikutter needs rbenv to use newer ruby interpreter.

Attributes
----------

* default['mikutter']['dir'] : specify install directory
* default['mikutter']['user'] : set user
* default['mikutter']['group'] : set user group
* default['mikutter']['repository'] : set git repository
* default['mikutter']['branch'] : set branch

Usage
-----

#### mikutter::mikutter\_git

Just include `mikutter` in your node's `run_list`:

```json
{
  "mikutter": {
    "dir":'<install path>',
    "user":'vagrant',
    "repository":'<url to mikutter git repository>',
    "branch":"master"
  },
  "run_list": [
    "mikutter::mikutter_git"
  ]
}
```

Contributing
------------
1. Fork the repository on Github
2. Create a named feature branch (like `add_component_x`)
3. Write your change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request using Github

License and Authors
-------------------
License: Apache 2.0

Authors: cosmo0920
