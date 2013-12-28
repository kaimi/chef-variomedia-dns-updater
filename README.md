variomedia-dns-updater Cookbook
===============================

This installs
[the Variomedia DNS Updater](https://github.com/kaimi/variomedia-dns-updater).

Requirements
------------

- `bash`
- `curl`
- `dig`

At the moment, this is only tested on Ubuntu and installs Ubuntu specific 
packages for its requirements.

Attributes
----------

#### variomedia-dns-updater::default
<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['variomedia-dns-updater']['dir']</tt></td>
    <td>String</td>
    <td>installation base directory</td>
    <td><tt>/srv/variomedia-dns-updater</tt></td>
  </tr>
  <tr>
    <td><tt>['variomedia-dns-updater']['repository']</tt></td>
    <td>String</td>
    <td>repository to clone from</td>
    <td><tt>git://github.com/kaimi/variomedia-dns-updater</tt></td>
  </tr>
  <tr>
    <td><tt>['variomedia-dns-updater']['version']</tt></td>
    <td>String</td>
    <td>git revision to check out; can be any valid revision identifier</td>
    <td><tt>master</tt></td>
  </tr>
  <tr>
    <td><tt>['variomedia-dns-updater']['user']</tt></td>
    <td>String</td>
    <td>user to run the updater as</td>
    <td><tt>daemon</tt></td>
  </tr>
  <tr>
    <td><tt>['variomedia-dns-updater']['email']</tt></td>
    <td>String</td>
    <td>email address to send cron job error emails to</td>
    <td><tt>mail@domain.tld</tt></td>
  </tr>
  <tr>
    <td><tt>['variomedia-dns-updater']['frequency']</tt></td>
    <td>int</td>
    <td>frequency to run the updater on; measured in minutes, should be 1–60</td>
    <td><tt>5</tt></td>
  </tr>
  <tr>
    <td><tt>['variomedia-dns-updater']['logfile']</tt></td>
    <td>String</td>
    <td>log file to redirect the updater’s output to</td>
    <td><tt>/var/log/variomedia-dns-updater.log</tt></td>
  </tr>
  <tr>
    <td><tt>['variomedia-dns-updater']['hostname']</tt></td>
    <td>String</td>
    <td>host name to check your public IP against</td>
    <td><tt>sub.domain.tld</tt></td>
  </tr>
  <tr>
    <td><tt>['variomedia-dns-updater']['domains']</tt></td>
    <td>String[]</td>
    <td>domains to modify</td>
    <td><tt>sub1.domain.tld, sub2.domain.tld, domain.tld</tt></td>
  </tr>
  <tr>
    <td><tt>['variomedia-dns-updater']['username']</tt></td>
    <td>String</td>
    <td>your variomedia dynamic DNS user name (= account email address)</td>
    <td><tt>some@email.address</tt></td>
  </tr>
  <tr>
    <td><tt>['variomedia-dns-updater']['password']</tt></td>
    <td>String</td>
    <td>your variomedia dynamic DNS password</td>
    <td><tt>anditspassword</tt></td>
  </tr>
  <tr>
    <td><tt>['variomedia-dns-updater']['site']</tt></td>
    <td>String</td>
    <td>override public IP address check web site</td>
    <td><tt>nil</tt></td>
  </tr>
</table>

Usage
-----

#### variomedia-updater::default
You will have to at least set the `email`, `hostname`, `domains`, `username` 
and `password` attributes before running the recipe.

```ruby
node.set['variomedia-dns-updater']['email'] = "admin@exapmle.com"
node.set['variomedia-dns-updater']['hostname'] = "your.domain.tld"
node.set['variomedia-dns-updater']['domains'] = ["your.domain.tld, host.domain.tld"]
node.set['variomedia-dns-updater']['username'] = "your@account.address"
node.set['variomedia-dns-updater']['password'] = "barbaz"

include_recipe "variomedia-dns-updater::default"
```

The `site` attribute is entirely optional and probably not a good thing to use.

Contributing
------------

I am using nvie’s
[git branching model](http://nvie.com/posts/a-successful-git-branching-model/ 
"nvie.com: A successfull Git branichng model"). To contribute you should follow 
these steps:

0. Check if your proposed change is already implemented in the `develop` branch
1. Fork the repository on Github
2. Create a named feature branch (like `feature-x`)
3. Write your change
4. Submit a Pull Request against the `develop` branch using Github


License and Authors
-------------------

Authors: ka’imi <kaimi@kaimi.cc>
