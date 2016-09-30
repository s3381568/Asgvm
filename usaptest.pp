class usaptest {
	user { 'becca':
		ensure => 'present',
		home => '/home/becca',
		groups => ['rmit','sysadmin','cars'],
		password => '$1$xJTSdMl3$hMcZb0ssdxm67vwYO/CrU1',
		uid => '10011568',
		shell => '/bin/bash',
	}
	group { 'rmit':
		ensure => 'present',
	}
	group { 'sysadmin':
		ensure => 'present',
	}
	group { 'cars':
		ensure => 'present',
	}
}
