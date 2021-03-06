class usaptest {
	user { 'becca':
		ensure => 'present',
		home => '/home/becca',
		groups => ['rmit','sysadmin','cars'],
		password => '$1$23N6o3PO$Lg3VDT5djdJW2tBE5oLSK.',
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

class servicerestarts {

	file { '/etc/ssh/sshd_config':
		notify => Service['sshd'],
		owner => 'root',
		group => 'root',
	}

	file { '/etc/httpd/cnf/httpd.conf':
                notify => Service['httpd'],
                owner => 'root',
                group => 'root',
        }
	
	file { '/etc/my.cnf':
                notify => Service['mysqld'],
                owner => 'root',
                group => 'root',
        }
}
