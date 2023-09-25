#!/usr/bin/env bash
# using puppet to make changes to my configuration file

file { 'etc/ssh/ssh_config':
	ensure => present,

content =>"

	#SSH client configuration
	host*
	IdentifyFile ~/.ssh/school
	PassworddAuthentication no
	",

}
