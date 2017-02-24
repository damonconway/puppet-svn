# Class: svn
#
# Install the subversion package.
#
# Parameters:
#   $ensure:
#       Control the state of the package.
#       Default: installed
#       Options: absent, installed, latest, $VERSION
#
#   $package_name
#       The name of the package to install.
#       Default: subversion
#
# Actions:
#   Installs subversion package
#
class svn (
  $ensure       = 'installed',
  $package_name = $::svn::params::package_name,
) {

  package { 'svn':
    ensure => $ensure,
    name   => $package_name,
  }
  
}
