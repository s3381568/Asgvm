class usaptest {
  user { 'becca':
    ensure => present,
    uid => 10011568,
    managehome => true,
    password => '$1$3.dcgLwk$qJfoCMMYf3K/FF1WMatGi1',
    groups => ['rmit', 'sysadmin', 'cars'],
    shell => '/bin/bash',
  }

  group { 'rmit':
    ensure => present,
  }
  group { 'sysadmin':
    ensure => present,
  }
  
  group { 'cars':
    ensure => present,
  }

  package { 'vim':
    ensure => present,
  }
}
