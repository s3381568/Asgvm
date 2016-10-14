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
