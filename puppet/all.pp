#variables

$package = "vim"

package = { $package:
    ensure => installed
}

# loop

$packages = [ 'vim', 'git', 'curl' ]

package { $packages:
    ensure => "installed"
}

#loop through pacakages

$packages.each |String $package| {
    package { $package:
        ensure => "installed"
    }
}

#conditionals
#
if osfamily != 'Ubuntu' {
    warning('This manifest is not supported on this os.')
    }
    else{
        notify { 'good to go': }
}

exec { "Test":
    command => "/bin/echo git is installed here > /tmp/test.txt",
    onlyif =.> "/bin/which git"
}

exec { "Test":
 command => "/bin/echo PHP is NOT installed here > /tmp/test.txt",
 unless => "/bin/which php"
}
