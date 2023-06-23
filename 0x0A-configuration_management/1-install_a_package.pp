# Install flack from pip3

package { 'python3-pip':
  ensure => installed,
}

# Install Flask using pip3 with specific version
exec { 'install_flask':
  command => 'pip3 install flask==2.1.0',
  path    => ['/usr/local/bin', '/usr/bin', '/bin'],
  require => Package['python3-pip'],
}
