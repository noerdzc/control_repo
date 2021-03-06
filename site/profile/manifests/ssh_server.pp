class profile::ssh_server {
	package {'openssh-server':
		ensure => present,
	}
	service { 'sshd':
		ensure => 'running',
		enable => 'true',
	}
	ssh_authorized_key { 'root@master.puppet.vm':
		ensure => present,
		user   => 'root',
		type   => 'ssh-rsa',
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDXhgO40V40C8GMDfQiRnZSBn4PpegtzmexKuQJrG8+DWBM9lICpjSOglevMgNCCMW2RxclyHw0qca9131sy1lO93xRdsH1gQxv8pMeQFVe9gaK+vxa0U4G3zC7cHCq57Z7ZCh5wT2O1h+GjApUIOrL8fZkW1jRS36SXM7RQiZ4usOjlFzmKU4WAE1ngU3N6J98D+YQGRSQHKsNIebmFaGkhN51csPxEMJOvxAE4GTtF2Kr9zEPPogdxUZCm20dbXqKhLAO+UBHA0zJ3qkN+LvGqJvStaTeQa4gHkftH+vJPa6lIUnQxDycH81MmJW7WRgt6MjAb2vFYI1ma9+7Qeej',
	}  
}
